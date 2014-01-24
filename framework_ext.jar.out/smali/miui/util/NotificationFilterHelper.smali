.class public Lmiui/util/NotificationFilterHelper;
.super Ljava/lang/Object;
.source "NotificationFilterHelper.java"


# static fields
.field private static final APP_NOTIFICATION:Ljava/lang/String; = "app_notification"

.field private static final CODE_REQUEST_PARAM_EMPTY:I = 0xc9

.field private static final CODE_RESPONSE_EMPTY:I = 0xca

.field private static final CODE_SUCCESS:I = 0xc8

.field public static final DISABLE_ALL:I = 0x3

.field public static final DISABLE_ICON:I = 0x1

.field public static final ENABLE:I = 0x2

.field private static final EXPANDED_BLACK_LIST_CODE:Ljava/lang/String; = "errCode"

.field private static final EXPANDED_BLACK_LIST_PACKAGES:Ljava/lang/String; = "packages"

.field public static final NONE:I = 0x0

.field private static final SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "NotificationFilterHelper"

.field private static final URL:Ljava/lang/String; = "http://policy.app.xiaomi.com/cms/interface/v1/checkpackages.php"

.field private static mBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static nm:Landroid/app/INotificationManager;

.field private static sFilterList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsSystemApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sFilterList:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sFilterMap:Ljava/util/HashMap;

    .line 57
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lmiui/util/NotificationFilterHelper;->mBlacklist:Ljava/util/HashSet;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sFilterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getInstalledAppsJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    sput-object p0, Lmiui/util/NotificationFilterHelper;->mBlacklist:Ljava/util/HashSet;

    return-object p0
.end method

.method private static areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 198
    const/4 v0, 0x1

    .line 200
    .local v0, enabledNotice:Z
    :try_start_0
    sget-object v1, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->areNotificationsEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 201
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static canSendNotifications(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "pkg"

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "pkg"
    .parameter "enable"

    .prologue
    .line 187
    :try_start_0
    sget-object v0, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "pkg"
    .parameter "value"

    .prologue
    .line 211
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    return-void
.end method

.method public static enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "pkg"
    .parameter "enable"

    .prologue
    .line 207
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V

    .line 208
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 4
    .parameter "context"
    .parameter "pkg"
    .parameter "checkSystemSetting"

    .prologue
    .line 106
    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 107
    .local v0, enabledNotice:Z
    :goto_0
    const/4 v1, 0x0

    .line 108
    .local v1, flag:I
    if-eqz v0, :cond_4

    .line 109
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 110
    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p1, v2}, Lmiui/util/NotificationFilterHelper;->isSystemApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    const/4 v1, 0x2

    .line 130
    :cond_0
    :goto_1
    return v1

    .line 106
    .end local v0           #enabledNotice:Z
    .end local v1           #flag:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    .restart local v0       #enabledNotice:Z
    .restart local v1       #flag:I
    :cond_2
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getNetDefaultFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 116
    if-nez v1, :cond_3

    .line 118
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 120
    :cond_3
    if-nez v1, :cond_0

    .line 122
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getGameCenterFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 128
    :cond_4
    const/4 v1, 0x3

    goto :goto_1
.end method

.method public static getAppNotificationText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "pkg"

    .prologue
    .line 241
    const v1, 0x60c024b

    .line 242
    .local v1, textId:I
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    .line 243
    .local v0, flag:I
    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 245
    :pswitch_0
    const v1, 0x60c024a

    .line 246
    goto :goto_0

    .line 248
    :pswitch_1
    const v1, 0x60c024b

    .line 249
    goto :goto_0

    .line 251
    :pswitch_2
    const v1, 0x60c0249

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static getDefaultFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "pkg"

    .prologue
    .line 160
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->initFilterList(Landroid/content/Context;)V

    .line 161
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sFilterList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getGameCenterFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "pkg"

    .prologue
    .line 135
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->readBlacklist(Landroid/content/Context;)V

    .line 136
    sget-object v0, Lmiui/util/NotificationFilterHelper;->mBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getInstalledAppsJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 322
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 323
    .local v5, param:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 324
    .local v0, appArray:Lorg/json/JSONArray;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 325
    .local v4, packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 326
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 331
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_0
    const-string v6, "packages"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    return-object v6

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, e:Lorg/json/JSONException;
    const-string v6, ""

    goto :goto_1
.end method

.method private static getNetDefaultFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "pkg"

    .prologue
    .line 156
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->loadAppNetFlagByPkg(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .parameter "context"

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    :try_start_0
    const-string v1, "com.android.systemui"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 98
    :cond_0
    :goto_0
    const-string v1, "app_notification"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static initFilterList(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 165
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sFilterList:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_notification_filter_white_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, filterList:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, packageNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 171
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sFilterList:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1           #i:I
    .end local v2           #packageNames:[Ljava/lang/String;
    :cond_0
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sFilterList:Ljava/util/HashSet;

    const-string v4, "cn.com.fetion"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sFilterList:Ljava/util/HashSet;

    const-string v4, "com.google.android.talk"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sFilterList:Ljava/util/HashSet;

    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sFilterList:Ljava/util/HashSet;

    const-string v4, "com.tencent.qq"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sFilterList:Ljava/util/HashSet;

    const-string v4, "com.tencent.mobileqq"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sFilterList:Ljava/util/HashSet;

    const-string v4, "com.xiaomi.channel"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v0           #filterList:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static initUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "pkg"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isUserSetttingInited(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1, v1}, Lmiui/util/NotificationFilterHelper;->isSystemApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    .line 231
    .local v0, flag:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 232
    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 233
    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static isSystemApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 4
    .parameter "pkg"
    .parameter "pm"

    .prologue
    const/4 v2, 0x0

    .line 259
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 260
    .local v1, isSystemApp:Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 266
    :goto_0
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 267
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 264
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isUserSetttingInited(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "pkg"

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static loadAppNetFlag(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/util/NotificationFilterHelper$1;

    invoke-direct {v1, p0}, Lmiui/util/NotificationFilterHelper$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method

.method public static loadAppNetFlagByPkg(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "pkg"

    .prologue
    .line 62
    sget-object v1, Lmiui/provider/CloudAppControll$TAG;->TAG_NOTIFICATION_BLACKLIST:Lmiui/provider/CloudAppControll$TAG;

    invoke-static {p0, v1, p1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, flag:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 69
    :cond_0
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sFilterMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static observeSettingChanged(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2
    .parameter "resolver"
    .parameter "observer"

    .prologue
    .line 273
    const-string v0, "status_bar_notification_filter_white_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    return-void
.end method

.method private static readBlacklist(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 140
    sget-object v3, Lmiui/util/NotificationFilterHelper;->mBlacklist:Ljava/util/HashSet;

    if-nez v3, :cond_0

    .line 141
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lmiui/util/NotificationFilterHelper;->mBlacklist:Ljava/util/HashSet;

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_expanded_notification_black_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, blacklist:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, packageNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 149
    sget-object v3, Lmiui/util/NotificationFilterHelper;->mBlacklist:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v0           #blacklist:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #packageNames:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static requestBlacklist(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 280
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/util/NotificationFilterHelper$2;

    invoke-direct {v1, p0}, Lmiui/util/NotificationFilterHelper$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 319
    return-void
.end method
