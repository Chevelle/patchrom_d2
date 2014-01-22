.class public Lcom/android/server/AssetRedirectionManagerService;
.super Lcom/android/internal/app/IAssetRedirectionManager$Stub;
.source "AssetRedirectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AssetRedirectionManagerService$ResourceRedirectionsProcessor;,
        Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetRedirectionManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRedirections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;",
            "Landroid/content/res/PackageRedirectionMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/IAssetRedirectionManager$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    .line 46
    iput-object p1, p0, Lcom/android/server/AssetRedirectionManagerService;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private static findThemeResourceId([Landroid/content/pm/ThemeInfo;Ljava/lang/String;)I
    .locals 4
    .parameter "themeInfos"
    .parameter "needle"

    .prologue
    .line 177
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    array-length v2, p0

    .line 179
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 180
    aget-object v1, p0, v0

    .line 181
    .local v1, info:Landroid/content/pm/ThemeInfo;
    iget-object v3, v1, Landroid/content/pm/ThemeInfo;->themeId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget v3, v1, Landroid/content/pm/ThemeInfo;->styleResourceId:I

    .line 186
    .end local v0           #i:I
    .end local v1           #info:Landroid/content/pm/ThemeInfo;
    .end local v2           #n:I
    :goto_1
    return v3

    .line 179
    .restart local v0       #i:I
    .restart local v1       #info:Landroid/content/pm/ThemeInfo;
    .restart local v2       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0           #i:I
    .end local v1           #info:Landroid/content/pm/ThemeInfo;
    .end local v2           #n:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private generateExplicitRedirections(Landroid/content/res/PackageRedirectionMap;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "resMap"
    .parameter "res"
    .parameter "themePackageName"
    .parameter "targetPackageName"

    .prologue
    .line 147
    const/16 v1, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {p4, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, redirectXmlName:Ljava/lang/String;
    const-string v1, "xml"

    invoke-virtual {p2, v6, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 149
    .local v2, redirectXmlResId:I
    if-nez v2, :cond_0

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Lcom/android/server/AssetRedirectionManagerService$ResourceRedirectionsProcessor;

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AssetRedirectionManagerService$ResourceRedirectionsProcessor;-><init>(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Landroid/content/res/PackageRedirectionMap;)V

    .line 155
    .local v0, processor:Lcom/android/server/AssetRedirectionManagerService$ResourceRedirectionsProcessor;
    invoke-virtual {v0}, Lcom/android/server/AssetRedirectionManagerService$ResourceRedirectionsProcessor;->process()V

    goto :goto_0
.end method

.method private generatePackageRedirectionMap(Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;)Landroid/content/res/PackageRedirectionMap;
    .locals 10
    .parameter "key"

    .prologue
    const/4 v6, 0x0

    .line 102
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 104
    .local v0, assets:Landroid/content/res/AssetManager;
    iget-object v7, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    const-string v8, "android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 106
    .local v1, frameworkAssets:Z
    if-nez v1, :cond_1

    .line 107
    iget-object v7, p0, Lcom/android/server/AssetRedirectionManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/AssetRedirectionManagerService;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 108
    .local v2, pi:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 110
    :cond_0
    const-string v7, "AssetRedirectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to attach target package assets for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 137
    :goto_0
    return-object v4

    .line 115
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v7, p0, Lcom/android/server/AssetRedirectionManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/AssetRedirectionManagerService;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 116
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_2

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->themeInfos:[Landroid/content/pm/ThemeInfo;

    if-eqz v7, :cond_2

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 118
    :cond_2
    const-string v7, "AssetRedirectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to attach theme package assets from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 119
    goto :goto_0

    .line 122
    :cond_3
    new-instance v4, Landroid/content/res/PackageRedirectionMap;

    invoke-direct {v4}, Landroid/content/res/PackageRedirectionMap;-><init>()V

    .line 128
    .local v4, resMap:Landroid/content/res/PackageRedirectionMap;
    if-eqz v1, :cond_4

    .line 129
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->themeInfos:[Landroid/content/pm/ThemeInfo;

    iget-object v8, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themeId:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/AssetRedirectionManagerService;->findThemeResourceId([Landroid/content/pm/ThemeInfo;Ljava/lang/String;)I

    move-result v5

    .line 130
    .local v5, themeResourceId:I
    invoke-virtual {v4}, Landroid/content/res/PackageRedirectionMap;->getNativePointer()I

    move-result v7

    const v8, 0x1030005

    invoke-virtual {v0, v7, v8, v5}, Landroid/content/res/AssetManager;->generateStyleRedirections(III)Z

    .line 134
    .end local v5           #themeResourceId:I
    :cond_4
    new-instance v3, Landroid/content/res/Resources;

    invoke-direct {v3, v0, v6, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 135
    .local v3, res:Landroid/content/res/Resources;
    iget-object v6, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, v3, v6, v7}, Lcom/android/server/AssetRedirectionManagerService;->generateExplicitRedirections(Landroid/content/res/PackageRedirectionMap;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getUnredirectedResourcesForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 190
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 192
    .local v0, assets:Landroid/content/res/AssetManager;
    const-string v3, "android"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    invoke-static {p0, p1}, Lcom/android/server/AssetRedirectionManagerService;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 194
    .local v1, pi:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 196
    :cond_0
    const-string v3, "AssetRedirectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get resources for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    :cond_1
    new-instance v3, Landroid/content/res/Resources;

    invoke-direct {v3, v0, v2, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public clearPackageRedirectionMap(Ljava/lang/String;)V
    .locals 5
    .parameter "targetPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v4, p0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    monitor-enter v4

    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 69
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;

    .line 72
    .local v1, key:Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;
    iget-object v3, v1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 76
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    .end local v1           #key:Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    return-void
.end method

.method public clearRedirectionMapsByTheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "themePackageName"
    .parameter "themeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v4, p0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    monitor-enter v4

    .line 53
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 54
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;

    .line 57
    .local v1, key:Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;
    iget-object v3, v1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    iget-object v3, v1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themeId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 62
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    .end local v1           #key:Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 207
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v4, filteredKeySet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetRedirectionManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v21, "android.permission.DUMP"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_0

    .line 212
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Permission Denial: can\'t dump assetredirectionservice from from pid="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ", uid="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    monitor-exit v20

    .line 268
    :goto_0
    return-void

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 219
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;Landroid/content/res/PackageRedirectionMap;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/PackageRedirectionMap;

    .line 220
    .local v13, map:Landroid/content/res/PackageRedirectionMap;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/content/res/PackageRedirectionMap;->getPackageId()I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 221
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;Landroid/content/res/PackageRedirectionMap;>;"
    .end local v4           #filteredKeySet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #map:Landroid/content/res/PackageRedirectionMap;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 224
    .restart local v4       #filteredKeySet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v19, Lcom/android/server/AssetRedirectionManagerService$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/AssetRedirectionManagerService$1;-><init>(Lcom/android/server/AssetRedirectionManagerService;)V

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 239
    const-string v19, "Theme asset redirections:"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const/4 v12, 0x0

    .line 241
    .local v12, lastPackageName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 242
    .local v11, lastId:Ljava/lang/String;
    const/16 v16, 0x0

    .line 243
    .local v16, themeRes:Landroid/content/res/Resources;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;

    .line 244
    .local v10, key:Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;
    if-eqz v12, :cond_4

    iget-object v0, v10, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 245
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "* Theme package "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    iget-object v12, v10, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetRedirectionManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v10, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/AssetRedirectionManagerService;->getUnredirectedResourcesForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v16

    .line 249
    :cond_5
    if-eqz v11, :cond_6

    iget-object v0, v10, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themeId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 250
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  theme id #"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themeId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    iget-object v11, v10, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themeId:Ljava/lang/String;

    .line 253
    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "    "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetRedirectionManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v10, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/AssetRedirectionManagerService;->getUnredirectedResourcesForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v15

    .line 255
    .local v15, targetRes:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/PackageRedirectionMap;

    .line 256
    .local v14, resMap:Landroid/content/res/PackageRedirectionMap;
    invoke-virtual {v14}, Landroid/content/res/PackageRedirectionMap;->getRedirectionKeys()[I

    move-result-object v6

    .line 257
    .local v6, fromIdents:[I
    array-length v2, v6

    .line 258
    .local v2, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v2, :cond_3

    .line 259
    aget v5, v6, v8

    .line 260
    .local v5, fromIdent:I
    invoke-virtual {v14, v5}, Landroid/content/res/PackageRedirectionMap;->lookupRedirection(I)I

    move-result v17

    .line 261
    .local v17, toIdent:I
    if-eqz v15, :cond_8

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, fromName:Ljava/lang/String;
    :goto_3
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    .line 263
    .local v18, toName:Ljava/lang/String;
    :goto_4
    const-string v19, "      %s (0x%08x) => %s (0x%08x)"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    aput-object v18, v21, v22

    const/16 v22, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 261
    .end local v7           #fromName:Ljava/lang/String;
    .end local v18           #toName:Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 262
    .restart local v7       #fromName:Ljava/lang/String;
    :cond_9
    const/16 v18, 0x0

    goto :goto_4

    .line 267
    .end local v2           #N:I
    .end local v5           #fromIdent:I
    .end local v6           #fromIdents:[I
    .end local v7           #fromName:Ljava/lang/String;
    .end local v8           #i:I
    .end local v10           #key:Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;
    .end local v14           #resMap:Landroid/content/res/PackageRedirectionMap;
    .end local v15           #targetRes:Landroid/content/res/Resources;
    .end local v17           #toIdent:I
    :cond_a
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getPackageRedirectionMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/PackageRedirectionMap;
    .locals 5
    .parameter "themePackageName"
    .parameter "themeId"
    .parameter "targetPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v4, p0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    monitor-enter v4

    .line 83
    :try_start_0
    new-instance v0, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;-><init>(Lcom/android/server/AssetRedirectionManagerService$1;)V

    .line 84
    .local v0, key:Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;
    iput-object p1, v0, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    .line 85
    iput-object p2, v0, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themeId:Ljava/lang/String;

    .line 86
    iput-object p3, v0, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/PackageRedirectionMap;

    .line 89
    .local v1, map:Landroid/content/res/PackageRedirectionMap;
    if-eqz v1, :cond_0

    .line 90
    monitor-exit v4

    move-object v2, v1

    .line 96
    .end local v1           #map:Landroid/content/res/PackageRedirectionMap;
    .local v2, map:Landroid/content/res/PackageRedirectionMap;
    :goto_0
    return-object v2

    .line 92
    .end local v2           #map:Landroid/content/res/PackageRedirectionMap;
    .restart local v1       #map:Landroid/content/res/PackageRedirectionMap;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/AssetRedirectionManagerService;->generatePackageRedirectionMap(Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;)Landroid/content/res/PackageRedirectionMap;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    iget-object v3, p0, Lcom/android/server/AssetRedirectionManagerService;->mRedirections:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    monitor-exit v4

    move-object v2, v1

    .end local v1           #map:Landroid/content/res/PackageRedirectionMap;
    .restart local v2       #map:Landroid/content/res/PackageRedirectionMap;
    goto :goto_0

    .line 98
    .end local v0           #key:Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;
    .end local v2           #map:Landroid/content/res/PackageRedirectionMap;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
