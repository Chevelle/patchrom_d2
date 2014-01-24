.class public final Lmiui/content/res/ThemeResourcesPackage;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field private static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/content/res/ThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 0
    .parameter "wrapped"
    .parameter "resources"
    .parameter "packageName"
    .parameter "metaData"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 55
    return-void
.end method

.method public static getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .locals 6
    .parameter "resources"
    .parameter "packageName"

    .prologue
    .line 22
    const/4 v2, 0x0

    .line 23
    .local v2, themeResources:Lmiui/content/res/ThemeResourcesPackage;
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    check-cast v2, Lmiui/content/res/ThemeResourcesPackage;

    .line 26
    .restart local v2       #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    :cond_0
    if-nez v2, :cond_2

    .line 27
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v2

    .line 28
    sget-object v4, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v4

    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, currentResources:Lmiui/content/res/ThemeResourcesPackage;
    :try_start_0
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmiui/content/res/ThemeResourcesPackage;

    move-object v1, v0

    .line 33
    :cond_1
    if-nez v1, :cond_3

    .line 34
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :goto_0
    monitor-exit v4

    .line 41
    .end local v1           #currentResources:Lmiui/content/res/ThemeResourcesPackage;
    :cond_2
    return-object v2

    .line 37
    .restart local v1       #currentResources:Lmiui/content/res/ThemeResourcesPackage;
    :cond_3
    move-object v2, v1

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .locals 4
    .parameter "resources"
    .parameter "packageName"

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, themeResources:Lmiui/content/res/ThemeResourcesPackage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 47
    new-instance v2, Lmiui/content/res/ThemeResourcesPackage;

    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, p1, v3}, Lmiui/content/res/ThemeResourcesPackage;-><init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 46
    .end local v1           #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    .local v2, themeResources:Lmiui/content/res/ThemeResourcesPackage;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2           #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    .restart local v1       #themeResources:Lmiui/content/res/ThemeResourcesPackage;
    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 59
    sget v2, Landroid/content/res/MiuiResources;->sCookieFramework:I

    iget v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    if-eq v2, v3, :cond_0

    sget v2, Landroid/content/res/MiuiResources;->sCookieMiui:I

    iget v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    if-eq v2, v3, :cond_0

    .line 61
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    .line 80
    :goto_0
    return v2

    .line 64
    :cond_0
    const/4 v1, 0x0

    .line 65
    .local v1, result:Z
    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 66
    .local v0, path:Ljava/lang/String;
    sget v2, Landroid/content/res/MiuiResources;->sCookieFramework:I

    iget v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    if-ne v2, v3, :cond_2

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 68
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    .line 74
    :cond_1
    :goto_1
    iput-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 75
    if-eqz v1, :cond_3

    .line 76
    const-string v2, "package/only"

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 77
    const/4 v2, 0x1

    goto :goto_0

    .line 70
    :cond_2
    sget v2, Landroid/content/res/MiuiResources;->sCookieMiui:I

    iget v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    if-ne v2, v3, :cond_1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-miui-res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 72
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    goto :goto_1

    .line 80
    :cond_3
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v2

    iget-object v3, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public mergeThemeValues(Ljava/lang/String;Landroid/content/res/MiuiResources$ThemeValues;)V
    .locals 1
    .parameter "filterKey"
    .parameter "values"

    .prologue
    .line 85
    iget-boolean v0, p0, Lmiui/content/res/ThemeResourcesPackage;->mIsTop:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->mergeThemeValues(Ljava/lang/String;Landroid/content/res/MiuiResources$ThemeValues;)V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Landroid/content/res/MiuiResources$ThemeValues;)V

    .line 89
    return-void
.end method
