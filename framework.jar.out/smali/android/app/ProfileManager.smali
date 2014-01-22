.class public Landroid/app/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field public static final ACTION_PROFILE_PICKER:Ljava/lang/String; = "android.intent.action.PROFILE_PICKER"

.field public static final EXTRA_PROFILES_STATE:Ljava/lang/String; = "profile_state"

.field public static final EXTRA_PROFILE_EXISTING_UUID:Ljava/lang/String; = "android.intent.extra.profile.EXISTING_UUID"

.field public static final EXTRA_PROFILE_PICKED_UUID:Ljava/lang/String; = "android.intent.extra.profile.PICKED_UUID"

.field public static final EXTRA_PROFILE_SHOW_NONE:Ljava/lang/String; = "android.intent.extra.profile.SHOW_NONE"

.field public static final EXTRA_PROFILE_TITLE:Ljava/lang/String; = "android.intent.extra.profile.TITLE"

.field public static final NO_PROFILE:Ljava/util/UUID; = null

.field public static final PROFILES_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.app.profiles.PROFILES_STATE_CHANGED"

.field public static final PROFILES_STATE_DISABLED:I = 0x0

.field public static final PROFILES_STATE_ENABLED:I = 0x1

.field private static final SYSTEM_PROFILES_ENABLED:Ljava/lang/String; = "system_profiles_enabled"

.field private static final TAG:Ljava/lang/String; = "ProfileManager"

.field private static mEmptyProfile:Landroid/app/Profile;

.field private static sService:Landroid/app/IProfileManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/app/ProfileManager;->NO_PROFILE:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    .line 165
    new-instance v0, Landroid/app/Profile;

    const-string v1, "EmptyProfile"

    invoke-direct {v0, v1}, Landroid/app/Profile;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/app/ProfileManager;->mEmptyProfile:Landroid/app/Profile;

    .line 166
    return-void
.end method

.method public static getService()Landroid/app/IProfileManager;
    .locals 2

    .prologue
    .line 154
    sget-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    if-eqz v1, :cond_0

    .line 155
    sget-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    .line 159
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 157
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "profile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 158
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IProfileManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProfileManager;

    move-result-object v1

    sput-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    .line 159
    sget-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    goto :goto_0
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 326
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addProfile(Landroid/app/Profile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 214
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->addProfile(Landroid/app/Profile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfile()Landroid/app/Profile;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 194
    iget-object v1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 198
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->getActiveProfile()Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const/4 v1, 0x0

    goto :goto_0

    .line 206
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Landroid/app/ProfileManager;->mEmptyProfile:Landroid/app/Profile;

    goto :goto_0
.end method

.method public getActiveProfileGroup(Ljava/lang/String;)Landroid/app/ProfileGroup;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Landroid/app/ProfileManager;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;

    move-result-object v1

    .line 373
    .local v1, notificationGroup:Landroid/app/NotificationGroup;
    if-nez v1, :cond_0

    .line 374
    invoke-virtual {p0}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Profile;->getDefaultGroup()Landroid/app/ProfileGroup;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Profile;->getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;
    .locals 3
    .parameter "uuid"

    .prologue
    .line 363
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 367
    :goto_0
    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 353
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 357
    :goto_0
    return-object v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 3

    .prologue
    .line 316
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfile(Ljava/lang/String;)Landroid/app/Profile;
    .locals 3
    .parameter "profileName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->getProfileByName(Ljava/lang/String;)Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 245
    :goto_0
    return-object v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfile(Ljava/util/UUID;)Landroid/app/Profile;
    .locals 3
    .parameter "profileUuid"

    .prologue
    .line 250
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->getProfile(Landroid/os/ParcelUuid;)Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 259
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IProfileManager;->getProfiles()[Landroid/app/Profile;

    move-result-object v3

    .line 260
    .local v3, profiles:[Landroid/app/Profile;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 261
    .local v2, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 262
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1           #i:I
    .end local v2           #names:[Ljava/lang/String;
    .end local v3           #profiles:[Landroid/app/Profile;
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 v2, 0x0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getProfiles()[Landroid/app/Profile;
    .locals 3

    .prologue
    .line 273
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->getProfiles()[Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 277
    :goto_0
    return-object v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notificationGroupExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "notificationGroupName"

    .prologue
    .line 304
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->notificationGroupExistsByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    :goto_0
    return v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public profileExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"

    .prologue
    .line 282
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->profileExistsByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    return v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public profileExists(Ljava/util/UUID;)Z
    .locals 3
    .parameter "profileUuid"

    .prologue
    .line 293
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->profileExists(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 298
    :goto_0
    return v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 335
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeProfile(Landroid/app/Profile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 223
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->removeProfile(Landroid/app/Profile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetAll()V
    .locals 3

    .prologue
    .line 383
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->resetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 386
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 4
    .parameter "profileName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 170
    iget-object v1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 174
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->setActiveProfileByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/util/UUID;)V
    .locals 4
    .parameter "profileUuid"

    .prologue
    const/4 v3, 0x1

    .line 182
    iget-object v1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 186
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->setActiveProfile(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 344
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->updateNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateProfile(Landroid/app/Profile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 232
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->updateProfile(Landroid/app/Profile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
