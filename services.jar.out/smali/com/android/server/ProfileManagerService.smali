.class public Lcom/android/server/ProfileManagerService;
.super Landroid/app/IProfileManager$Stub;
.source "ProfileManagerService.java"


# static fields
.field public static final INTENT_ACTION_PROFILE_SELECTED:Ljava/lang/String; = "android.intent.action.PROFILE_SELECTED"

.field public static final INTENT_ACTION_PROFILE_UPDATED:Ljava/lang/String; = "android.intent.action.PROFILE_UPDATED"

.field private static final LOCAL_LOGV:Z = false

.field public static final PERMISSION_CHANGE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SETTINGS"

.field static final PROFILE_FILE:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "ProfileService"

.field private static final mWildcardUUID:Ljava/util/UUID;


# instance fields
.field private mActiveProfile:Landroid/app/Profile;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mContext:Landroid/content/Context;

.field private mDirty:Z

.field private mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastConnectedSSID:Ljava/lang/String;

.field private mProfileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWildcardGroup:Landroid/app/NotificationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "profiles.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    .line 91
    const-string v0, "a126d48a-aaef-47c4-baed-7f0e44aeffe5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/server/ProfileManagerService;->mWildcardUUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x1040022

    .line 147
    invoke-direct {p0}, Landroid/app/IProfileManager$Stub;-><init>()V

    .line 100
    new-instance v1, Lcom/android/server/ProfileManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/ProfileManagerService$1;-><init>(Lcom/android/server/ProfileManagerService;)V

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    iput-object p1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    .line 149
    new-instance v1, Landroid/app/backup/BackupManager;

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 150
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 151
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->getActiveSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mLastConnectedSSID:Ljava/lang/String;

    .line 153
    new-instance v1, Landroid/app/NotificationGroup;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/ProfileManagerService;->mWildcardUUID:Ljava/util/UUID;

    invoke-direct {v1, v2, v4, v3}, Landroid/app/NotificationGroup;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    .line 158
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialize()V

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ProfileManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ProfileManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialize()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ProfileManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->getActiveSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ProfileManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mLastConnectedSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/ProfileManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/ProfileManagerService;->mLastConnectedSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/ProfileManagerService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ProfileManagerService;)Landroid/app/Profile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ProfileManagerService;Landroid/app/Profile;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    move-result v0

    return v0
.end method

.method private addNotificationGroupInternal(Landroid/app/NotificationGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 462
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    .line 466
    .local v1, profile:Landroid/app/Profile;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/ProfileManagerService;->ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V

    goto :goto_0

    .line 469
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #profile:Landroid/app/Profile;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 470
    return-void
.end method

.method private addProfileInternal(Landroid/app/Profile;)V
    .locals 6
    .parameter "profile"

    .prologue
    const/4 v5, 0x1

    .line 320
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 321
    .local v0, group:Landroid/app/NotificationGroup;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/ProfileManagerService;->ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V

    goto :goto_0

    .line 323
    .end local v0           #group:Landroid/app/NotificationGroup;
    :cond_0
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/ProfileManagerService;->ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V

    .line 324
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iput-boolean v5, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 327
    return-void
.end method

.method private enforceChangePermissions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const-string v2, "You do not have permissions to change the Profile Manager."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method private ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V
    .locals 6
    .parameter "profile"
    .parameter "group"
    .parameter "defaultGroup"

    .prologue
    .line 330
    invoke-virtual {p2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Profile;->getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {p1}, Landroid/app/Profile;->getProfileGroups()[Landroid/app/ProfileGroup;

    move-result-object v0

    .local v0, arr$:[Landroid/app/ProfileGroup;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 337
    .local v3, pg:Landroid/app/ProfileGroup;
    invoke-virtual {v3, p2, p3}, Landroid/app/ProfileGroup;->matches(Landroid/app/NotificationGroup;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    .end local v3           #pg:Landroid/app/ProfileGroup;
    :cond_2
    new-instance v4, Landroid/app/ProfileGroup;

    invoke-virtual {p2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Landroid/app/ProfileGroup;-><init>(Ljava/util/UUID;Z)V

    invoke-virtual {p1, v4}, Landroid/app/Profile;->addProfileGroup(Landroid/app/ProfileGroup;)V

    goto :goto_0
.end method

.method private getActiveSSID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v3, p0, Lcom/android/server/ProfileManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 204
    .local v1, wifiinfo:Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-object v2

    .line 207
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v0

    .line 208
    .local v0, ssid:Landroid/net/wifi/WifiSsid;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getXmlString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v4, "<profiles>\n<active>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {p0}, Lcom/android/server/ProfileManagerService;->getActiveProfile()Landroid/app/Profile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v4, "</active>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Profile;

    .line 588
    .local v3, p:Landroid/app/Profile;
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Landroid/app/Profile;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_0

    .line 590
    .end local v3           #p:Landroid/app/Profile;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationGroup;

    .line 591
    .local v1, g:Landroid/app/NotificationGroup;
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v4}, Landroid/app/NotificationGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_1

    .line 593
    .end local v1           #g:Landroid/app/NotificationGroup;
    :cond_1
    const-string v4, "</profiles>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private initialiseStructure()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10f000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 573
    .local v0, xml:Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ProfileManagerService;->loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    .line 574
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 575
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 579
    return-void

    .line 577
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ProfileManagerService;->initialize(Z)V

    .line 171
    return-void
.end method

.method private initialize(Z)V
    .locals 5
    .parameter "skipFile"

    .prologue
    .line 174
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    .line 175
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    .line 176
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    .line 177
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 179
    move v2, p1

    .line 181
    .local v2, init:Z
    if-nez p1, :cond_0

    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->loadFromFile()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 193
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 195
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialiseStructure()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 200
    :cond_1
    :goto_1
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 186
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v2, 0x1

    .line 190
    goto :goto_0

    .line 188
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 189
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    goto :goto_0

    .line 196
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 197
    .local v1, ex:Ljava/lang/Throwable;
    const-string v3, "ProfileService"

    const-string v4, "Error loading xml from resource: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadFromFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 517
    .local v2, xppf:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 518
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/FileReader;

    sget-object v3, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 519
    .local v0, fr:Ljava/io/FileReader;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 520
    iget-object v3, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/android/server/ProfileManagerService;->loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    .line 521
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 522
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 523
    return-void
.end method

.method private loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V
    .locals 11
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 527
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 528
    .local v2, event:I
    const/4 v0, 0x0

    .line 529
    .local v0, active:Ljava/lang/String;
    :goto_0
    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    const-string v6, "profiles"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 530
    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 531
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, name:Ljava/lang/String;
    const-string v6, "active"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 533
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 534
    const-string v6, "ProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found active: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 535
    .restart local v3       #name:Ljava/lang/String;
    :cond_2
    const-string v6, "profile"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 536
    invoke-static {p1, p2}, Landroid/app/Profile;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile;

    move-result-object v5

    .line 537
    .local v5, prof:Landroid/app/Profile;
    invoke-direct {p0, v5}, Lcom/android/server/ProfileManagerService;->addProfileInternal(Landroid/app/Profile;)V

    .line 539
    if-nez v0, :cond_1

    .line 540
    invoke-virtual {v5}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 542
    .end local v5           #prof:Landroid/app/Profile;
    :cond_3
    const-string v6, "notificationGroup"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 543
    invoke-static {p1, p2}, Landroid/app/NotificationGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/NotificationGroup;

    move-result-object v4

    .line 544
    .local v4, ng:Landroid/app/NotificationGroup;
    invoke-direct {p0, v4}, Lcom/android/server/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V

    goto :goto_1

    .line 546
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #ng:Landroid/app/NotificationGroup;
    :cond_4
    if-ne v2, v10, :cond_1

    .line 547
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Premature end of file while reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 555
    :cond_5
    :try_start_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Ljava/util/UUID;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_2
    return-void

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 558
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    invoke-direct {p0, v6, v9}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Ljava/util/UUID;Z)Z

    .line 565
    :goto_3
    iput-boolean v10, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    goto :goto_2

    .line 562
    :cond_6
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Profile;

    invoke-direct {p0, v6, v9}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    goto :goto_3
.end method

.method private declared-synchronized persistIfDirty()V
    .locals 10

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 607
    .local v0, dirty:Z
    if-nez v0, :cond_1

    .line 608
    iget-object v8, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Profile;

    .line 609
    .local v5, profile:Landroid/app/Profile;
    invoke-virtual {v5}, Landroid/app/Profile;->isDirty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 610
    const/4 v0, 0x1

    .line 615
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #profile:Landroid/app/Profile;
    :cond_1
    if-nez v0, :cond_3

    .line 616
    iget-object v8, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationGroup;

    .line 617
    .local v3, group:Landroid/app/NotificationGroup;
    invoke-virtual {v3}, Landroid/app/NotificationGroup;->isDirty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 618
    const/4 v0, 0x1

    .line 623
    .end local v3           #group:Landroid/app/NotificationGroup;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz v0, :cond_4

    .line 625
    :try_start_1
    const-string v8, "ProfileService"

    const-string v9, "Saving profile data..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance v2, Ljava/io/FileWriter;

    sget-object v8, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 627
    .local v2, fw:Ljava/io/FileWriter;
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->getXmlString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 629
    const-string v8, "ProfileService"

    const-string v9, "Save completed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 632
    invoke-static {}, Lcom/android/server/ProfileManagerService;->clearCallingIdentity()J

    move-result-wide v6

    .line 633
    .local v6, token:J
    iget-object v8, p0, Lcom/android/server/ProfileManagerService;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v8}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 634
    invoke-static {v6, v7}, Lcom/android/server/ProfileManagerService;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 639
    .end local v2           #fw:Ljava/io/FileWriter;
    .end local v6           #token:J
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, e:Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 606
    .end local v0           #dirty:Z
    .end local v1           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private setActiveProfile(Landroid/app/Profile;Z)Z
    .locals 9
    .parameter "newActiveProfile"
    .parameter "doinit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 265
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 266
    const-string v6, "ProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set active profile to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    .line 268
    .local v2, lastProfile:Landroid/app/Profile;
    iput-object p1, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    .line 269
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 270
    if-eqz p2, :cond_1

    .line 278
    invoke-static {}, Lcom/android/server/ProfileManagerService;->clearCallingIdentity()J

    move-result-wide v3

    .line 281
    .local v3, token:J
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    iget-object v7, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/app/Profile;->doSelect(Landroid/content/Context;)V

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.PROFILE_SELECTED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, broadcast:Landroid/content/Intent;
    const-string v6, "name"

    iget-object v7, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v6, "uuid"

    iget-object v7, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v6, "lastName"

    invoke-virtual {v2}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v6, "lastUuid"

    invoke-virtual {v2}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 291
    invoke-static {v3, v4}, Lcom/android/server/ProfileManagerService;->restoreCallingIdentity(J)V

    .line 292
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 306
    .end local v0           #broadcast:Landroid/content/Intent;
    .end local v2           #lastProfile:Landroid/app/Profile;
    .end local v3           #token:J
    :cond_0
    :goto_0
    return v5

    .line 293
    .restart local v2       #lastProfile:Landroid/app/Profile;
    :cond_1
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    if-eq v2, v6, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 296
    invoke-static {}, Lcom/android/server/ProfileManagerService;->clearCallingIdentity()J

    move-result-wide v3

    .line 297
    .restart local v3       #token:J
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.PROFILE_UPDATED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v0       #broadcast:Landroid/content/Intent;
    const-string v6, "name"

    iget-object v7, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v6, "uuid"

    iget-object v7, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 301
    invoke-static {v3, v4}, Lcom/android/server/ProfileManagerService;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v0           #broadcast:Landroid/content/Intent;
    .end local v2           #lastProfile:Landroid/app/Profile;
    .end local v3           #token:J
    :catch_0
    move-exception v1

    .line 305
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setActiveProfile(Ljava/util/UUID;Z)Z
    .locals 3
    .parameter "profileUuid"
    .parameter "doinit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    invoke-direct {p0, v0, p2}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    move-result v0

    .line 251
    :goto_0
    return v0

    .line 250
    :cond_0
    const-string v0, "ProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set active profile to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 0
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 457
    invoke-direct {p0, p1}, Lcom/android/server/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V

    .line 458
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 459
    return-void
.end method

.method public addProfile(Landroid/app/Profile;)Z
    .locals 1
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 313
    invoke-direct {p0, p1}, Lcom/android/server/ProfileManagerService;->addProfileInternal(Landroid/app/Profile;)V

    .line 314
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public getActiveProfile()Landroid/app/Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    return-object v0
.end method

.method public getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    .locals 2
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    .line 602
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    goto :goto_0
.end method

.method public getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    .locals 3
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 499
    .local v0, group:Landroid/app/NotificationGroup;
    invoke-virtual {v0, p1}, Landroid/app/NotificationGroup;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    .end local v0           #group:Landroid/app/NotificationGroup;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/NotificationGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/NotificationGroup;

    return-object v0
.end method

.method public getProfile(Landroid/os/ParcelUuid;)Landroid/app/Profile;
    .locals 2
    .parameter "profileParcelUuid"

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 361
    .local v0, profileUuid:Ljava/util/UUID;
    invoke-virtual {p0, v0}, Lcom/android/server/ProfileManagerService;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v1

    return-object v1
.end method

.method public getProfile(Ljava/util/UUID;)Landroid/app/Profile;
    .locals 7
    .parameter "profileUuid"

    .prologue
    .line 366
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 367
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Profile;

    .line 378
    :goto_0
    return-object v6

    .line 370
    :cond_0
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Profile;

    .line 371
    .local v4, p:Landroid/app/Profile;
    invoke-virtual {v4}, Landroid/app/Profile;->getSecondaryUuids()[Ljava/util/UUID;

    move-result-object v0

    .local v0, arr$:[Ljava/util/UUID;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 372
    .local v5, uuid:Ljava/util/UUID;
    invoke-virtual {p1, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    .line 373
    goto :goto_0

    .line 371
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    .end local v0           #arr$:[Ljava/util/UUID;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #p:Landroid/app/Profile;
    .end local v5           #uuid:Ljava/util/UUID;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getProfileByName(Ljava/lang/String;)Landroid/app/Profile;
    .locals 2
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .line 354
    :goto_0
    return-object v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    goto :goto_0

    .line 354
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfiles()[Landroid/app/Profile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Profile;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/Profile;

    .line 384
    .local v0, tmpArr:[Landroid/app/Profile;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 385
    return-object v0
.end method

.method public notificationGroupExistsByName(Ljava/lang/String;)Z
    .locals 3
    .parameter "notificationGroupName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 442
    .local v0, group:Landroid/app/NotificationGroup;
    invoke-virtual {v0}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    const/4 v2, 0x1

    .line 446
    .end local v0           #group:Landroid/app/NotificationGroup;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public profileExists(Landroid/os/ParcelUuid;)Z
    .locals 2
    .parameter "profileUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public profileExistsByName(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 432
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/UUID;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const/4 v2, 0x1

    .line 436
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/UUID;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 5
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 475
    iget-boolean v3, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 478
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    .line 479
    .local v1, profile:Landroid/app/Profile;
    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Profile;->removeProfileGroup(Ljava/util/UUID;)V

    goto :goto_1

    .line 475
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #profile:Landroid/app/Profile;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 481
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 482
    return-void
.end method

.method public removeProfile(Landroid/app/Profile;)Z
    .locals 3
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 395
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 396
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 397
    iput-boolean v0, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 398
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetAll()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ProfileManagerService;->initialize(Z)V

    .line 218
    return-void
.end method

.method public setActiveProfile(Landroid/os/ParcelUuid;)Z
    .locals 4
    .parameter "profileParcelUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 236
    .local v0, profileUuid:Ljava/util/UUID;
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    move-result v1

    .line 241
    :goto_0
    return v1

    .line 240
    :cond_0
    const-string v1, "ProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set active profile to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActiveProfileByName(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    move-result v0

    .line 229
    :goto_0
    return v0

    .line 228
    :cond_0
    const-string v0, "ProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find profile to set active, based on string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    goto :goto_0
.end method

.method settingsRestored()V
    .locals 3

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialize()V

    .line 509
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    .line 510
    .local v1, p:Landroid/app/Profile;
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/app/Profile;->validateRingtones(Landroid/content/Context;)V

    goto :goto_0

    .line 512
    .end local v1           #p:Landroid/app/Profile;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 513
    return-void
.end method

.method public updateNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 487
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 488
    .local v0, old:Landroid/app/NotificationGroup;
    if-eqz v0, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 494
    :cond_0
    return-void
.end method

.method public updateProfile(Landroid/app/Profile;)V
    .locals 4
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 408
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .line 409
    .local v0, old:Landroid/app/Profile;
    if-eqz v0, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 418
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    .line 422
    :cond_0
    return-void
.end method
