.class Lcom/android/server/pm/PackageManagerService$Injector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAvailableFeatures(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, features:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    const-string v0, "android.hardware.telephony"

    .line 375
    .local v0, HARDWARE_TELEPHONY:Ljava/lang/String;
    const-string v1, "android.hardware.telephony.cdma"

    .line 376
    .local v1, HARDWARE_TELEPHONY_CDMA:Ljava/lang/String;
    sget-boolean v3, Lmiui/os/Build;->IS_CDMA:Z

    if-eqz v3, :cond_1

    .line 377
    const-string v3, "android.hardware.telephony"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    new-instance v2, Landroid/content/pm/FeatureInfo;

    invoke-direct {v2}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 379
    .local v2, fi:Landroid/content/pm/FeatureInfo;
    const-string v3, "android.hardware.telephony"

    iput-object v3, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 380
    const-string v3, "android.hardware.telephony.cdma"

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .end local v2           #fi:Landroid/content/pm/FeatureInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/FeatureInfo;

    invoke-direct {v2}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 384
    .restart local v2       #fi:Landroid/content/pm/FeatureInfo;
    const-string v3, "android.hardware.telephony.cdma"

    iput-object v3, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 385
    const-string v3, "android.hardware.telephony.cdma"

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .end local v2           #fi:Landroid/content/pm/FeatureInfo;
    :cond_1
    return-void
.end method

.method static addMiuiExtendFlags(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .parameter "pkg"
    .parameter "pkgSetting"

    .prologue
    .line 229
    const/high16 v0, -0x3800

    .line 232
    .local v0, miuiExtendFlags:I
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 233
    return-void
.end method

.method static addMiuiSharedUids(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/MiuiSharedUids;->add(Lcom/android/server/pm/Settings;Z)V

    .line 219
    return-void
.end method

.method static addPackageToSlice(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/PackageInfo;I)Z
    .locals 2
    .parameter
    .parameter "pi"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 283
    const/high16 v0, 0x2

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 285
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 295
    :cond_0
    :goto_0
    const/high16 v0, 0x4

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 298
    :cond_2
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 299
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 305
    :cond_3
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/content/pm/ParceledListSlice;->append(Landroid/os/Parcelable;)Z

    move-result v0

    :goto_2
    return v0

    .line 287
    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    .line 301
    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    .line 305
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static checkApk(Lcom/android/server/pm/PackageManagerService;Landroid/os/Message;)Z
    .locals 7
    .parameter "service"
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 185
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 186
    .local v1, params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    instance-of v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 187
    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 188
    .local v0, insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v5

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    invoke-static {v4, v5, v6}, Lmiui/provider/ExtraGuard;->checkApk(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result v2

    .line 189
    .local v2, status:I
    if-eq v2, v3, :cond_1

    .line 190
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v3, :cond_0

    .line 192
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 199
    .end local v0           #insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v2           #status:I
    :cond_1
    return v3

    .line 193
    .restart local v0       #insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    .restart local v2       #status:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static checkMiuiIntent(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "pms"
    .parameter
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter "userId"
    .parameter "defaultResolveInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_a

    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "android.intent.category.HOME"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    const-string v4, "com.miui.home"

    const-string v5, "com.miui.home.launcher.Launcher"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 367
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 370
    :goto_1
    return-object v2

    .line 331
    :cond_1
    const-string v4, "http"

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 332
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 333
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 334
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, path:Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 337
    const-string v4, "zhuti.xiaomi.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    const-string v4, "/detail/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "/redeem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 339
    :cond_2
    const-string v4, "com.android.thememanager"

    const-string v5, "com.android.thememanager.activity.ThemeDetailActivity"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    .line 347
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getSystemResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 348
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    goto :goto_1

    .line 340
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    .restart local v0       #host:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    :cond_4
    const-string v4, "app.xiaomi.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    const-string v4, "/detail/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    const-string v4, "com.xiaomi.market"

    const-string v5, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 352
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_5
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 353
    const-string v4, "com.android.packageinstaller"

    const-string v5, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 354
    :cond_6
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_7
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mailto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    const-string v4, "android.intent.action.SENDTO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "smsto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 361
    :cond_9
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getSystemResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 362
    .restart local v2       #ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    goto/16 :goto_1

    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :cond_a
    move-object v2, p6

    .line 370
    goto/16 :goto_1
.end method

.method static doHandleMessage(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageHandler;Landroid/os/Message;)V
    .locals 2
    .parameter "service"
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 208
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerService$Injector;->checkApk(Lcom/android/server/pm/PackageManagerService;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method static getSystemResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p0, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v5, 0xfff

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, ret:Landroid/content/pm/ResolveInfo;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 311
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_1

    .line 312
    move-object v1, v2

    .line 315
    :cond_1
    iget v3, v2, Landroid/content/pm/ResolveInfo;->match:I

    and-int/2addr v3, v5

    const/high16 v4, 0x20

    if-eq v3, v4, :cond_0

    iget v3, v2, Landroid/content/pm/ResolveInfo;->match:I

    and-int/2addr v3, v5

    const/high16 v4, 0x10

    if-eq v3, v4, :cond_0

    iget v3, v2, Landroid/content/pm/ResolveInfo;->match:I

    and-int/2addr v3, v5

    const/high16 v4, 0x60

    if-eq v3, v4, :cond_0

    .line 318
    const/4 v1, 0x0

    .line 322
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v1
.end method

.method static ignoreMiuiFrameworkRes(Lcom/android/server/pm/PackageManagerService;Ljava/util/HashSet;)V
    .locals 2
    .parameter "service"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/framework-miui-res.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method static setMiuiExtendFlags(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .locals 8
    .parameter "service"
    .parameter "packageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 248
    const/high16 v6, -0x8000

    if-eq p2, v6, :cond_0

    const/high16 v6, 0x4000

    if-eq p2, v6, :cond_0

    const/high16 v6, 0x800

    if-eq p2, v6, :cond_0

    .line 250
    const/4 v6, 0x0

    .line 274
    :goto_0
    return v6

    .line 252
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    .line 254
    .local v2, permission:I
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 255
    .local v0, allowedByPermission:Z
    :goto_1
    if-nez v0, :cond_2

    .line 256
    const/4 v6, 0x1

    goto :goto_0

    .line 254
    .end local v0           #allowedByPermission:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 259
    .restart local v0       #allowedByPermission:Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .line 260
    .local v1, packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 261
    .local v5, settings:Lcom/android/server/pm/Settings;
    monitor-enter v1

    .line 262
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 263
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    iget-object v6, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 264
    .local v4, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 265
    const/high16 v6, -0x8000

    if-ne p2, v6, :cond_5

    .line 266
    const/high16 v6, -0x8000

    invoke-static {v4, v3, v6, p3}, Lcom/android/server/pm/PackageManagerService$Injector;->updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V

    .line 272
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 274
    :cond_4
    const/4 v6, 0x1

    monitor-exit v1

    goto :goto_0

    .line 275
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v6

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 267
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v4       #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_5
    const/high16 v6, 0x4000

    if-ne p2, v6, :cond_6

    .line 268
    const/high16 v6, 0x4000

    :try_start_1
    invoke-static {v4, v3, v6, p3}, Lcom/android/server/pm/PackageManagerService$Injector;->updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V

    goto :goto_2

    .line 269
    :cond_6
    const/high16 v6, 0x800

    if-ne p2, v6, :cond_3

    .line 270
    const/high16 v6, 0x800

    invoke-static {v4, v3, v6, p3}, Lcom/android/server/pm/PackageManagerService$Injector;->updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method static updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V
    .locals 3
    .parameter "pkgSetting"
    .parameter "pkg"
    .parameter "updateFlags"
    .parameter "flags"

    .prologue
    .line 236
    if-ne p3, p2, :cond_0

    .line 237
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 238
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 241
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method
