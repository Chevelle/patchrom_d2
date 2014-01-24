.class public Lmiui/maml/util/AppIconsHelper;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"


# static fields
.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60

.field private static mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

.field private static mThemeChanged:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 95
    .local v0, con:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v1, v2, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 96
    .local v1, version:I
    sget v2, Lmiui/maml/util/AppIconsHelper;->mThemeChanged:I

    if-le v1, v2, :cond_0

    .line 97
    invoke-static {}, Lmiui/maml/util/AppIconsHelper;->clearCache()V

    .line 98
    sput v1, Lmiui/maml/util/AppIconsHelper;->mThemeChanged:I

    .line 100
    :cond_0
    return-void
.end method

.method public static cleanUp()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lmiui/maml/RenderThread;->globalThreadStop()V

    .line 33
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    invoke-virtual {v0}, Lmiui/maml/util/RendererCoreCache;->clear()V

    .line 105
    :cond_0
    return-void
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "pm"
    .parameter "cacheTime"

    .prologue
    .line 49
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 50
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .local v3, activityName:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    .line 51
    invoke-static/range {v0 .. v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 52
    .local v6, d:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 54
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v6

    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "context"
    .parameter "info"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "cacheTime"

    .prologue
    const/4 v9, 0x0

    .line 69
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lmiui/maml/util/RendererCoreCache;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2}, Lmiui/maml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    .line 74
    :cond_0
    :try_start_0
    invoke-static {p0}, Lmiui/maml/util/AppIconsHelper;->checkVersion(Landroid/content/Context;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, key:Ljava/lang/String;
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    invoke-virtual {v0, v1, p4, p5}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v8

    .line 77
    .local v8, ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-nez v8, :cond_1

    .line 78
    invoke-static {p1, p2, p3}, Lmiui/content/res/IconCustomizer;->getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, fancyIconRelativePath:Ljava/lang/String;
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    new-instance v5, Lmiui/maml/util/FancyIconResourceLoader;

    invoke-direct {v5, v7}, Lmiui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v8

    .line 80
    iget-object v0, v8, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, v8, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    invoke-virtual {v0}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    .line 86
    .end local v7           #fancyIconRelativePath:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    iget-object v0, v8, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    if-eqz v0, :cond_2

    new-instance v0, Lmiui/maml/FancyDrawable;

    iget-object v2, v8, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    invoke-direct {v0, v2}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1           #key:Ljava/lang/String;
    .end local v8           #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :goto_0
    return-object v0

    .restart local v1       #key:Ljava/lang/String;
    .restart local v8       #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :cond_2
    move-object v0, v9

    .line 86
    goto :goto_0

    .line 87
    .end local v1           #key:Ljava/lang/String;
    .end local v8           #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :catch_0
    move-exception v6

    .line 88
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "MAML AppIconsHelper"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 89
    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"
    .parameter "cacheTime"

    .prologue
    .line 40
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 41
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    invoke-static {p0, v0, p2, p3, p4}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 40
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "cacheTime"

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, info:Landroid/content/pm/PackageItemInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 61
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 64
    invoke-static/range {v0 .. v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method
