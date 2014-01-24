.class public abstract Lmiui/net/MiCloudSyncAdapterBase;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "MiCloudSyncAdapterBase.java"


# static fields
.field public static final ACTION_RESUME_SYNC:Ljava/lang/String; = "com.miui.net.RESUME_SYNC"

.field private static final BAD_REQUEST_LIMIT_PER_DAY:I = 0x64

.field public static final PREF_RESUME_SYNC_TIME:Ljava/lang/String; = "ResumeSyncTime_%s"

.field private static final PREF_TOKEN_EXPIRED_COUNT:Ljava/lang/String; = "TokenExpiredCount_%s"

.field private static final PREF_TOKEN_EXPIRED_DAY:Ljava/lang/String; = "TokenExpiredDay_%s"

.field private static final RESUME_SYNC_INTERVAL:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "MiCloudSyncAdapterBase"


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected final mAuthType:Ljava/lang/String;

.field protected mAuthority:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mExtToken:Lmiui/net/ExtendedAuthToken;

.field protected mExtTokenStr:Ljava/lang/String;

.field protected mNumber:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mNumbers:[Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSyncResult:Landroid/content/SyncResult;

.field protected mTicket:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mTickets:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "autoInitialize"
    .parameter "authType"

    .prologue
    const/4 v1, 0x2

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 66
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTickets:[Ljava/lang/String;

    .line 67
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumbers:[Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/MiCloudSyncAdapterBase;->mResolver:Landroid/content/ContentResolver;

    .line 73
    iput-object p3, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthType:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private handle5xx()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "Http 5xx error. Suspending sync."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lmiui/net/MiCloudSyncAdapterBase;->suspendSync()V

    .line 217
    return-void
.end method

.method private handleBadRequest()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "Http bad request error. Suspending sync."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lmiui/net/MiCloudSyncAdapterBase;->suspendSync()V

    .line 178
    return-void
.end method

.method private handleForbidden()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "Http forbidden error. Turning off sync."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const v0, 0x60c0131

    invoke-direct {p0, v0}, Lmiui/net/MiCloudSyncAdapterBase;->turnOffSyncAndNotify(I)V

    .line 207
    return-void
.end method

.method private handleNotAcceptable()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "Http not-acceptable error. Turniong off sync."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const v0, 0x60c0132

    invoke-direct {p0, v0}, Lmiui/net/MiCloudSyncAdapterBase;->turnOffSyncAndNotify(I)V

    .line 212
    return-void
.end method

.method private handleUnauthorized()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 181
    const-string v9, "TokenExpiredCount_%s"

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, prefTokenExpiredCount:Ljava/lang/String;
    const-string v9, "TokenExpiredDay_%s"

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, prefTokenxpiredDay:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/net/MiCloudSyncAdapterBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 185
    .local v4, sp:Landroid/content/SharedPreferences;
    const-wide/16 v9, 0x0

    invoke-interface {v4, v3, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 186
    .local v7, tokenExpiredDay:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v11, 0x5265c00

    div-long v5, v9, v11

    .line 187
    .local v5, today:J
    const/4 v0, 0x0

    .line 188
    .local v0, count:I
    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 189
    invoke-interface {v4, v2, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 192
    const-string v9, "MiCloudSyncAdapterBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Http unauthorized error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times today."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 v9, 0x64

    if-lt v0, v9, :cond_1

    .line 194
    const-string v9, "MiCloudSyncAdapterBase"

    const-string v10, "Http unauthorized error reached limit. Turning off sync."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const v9, 0x60c0134

    invoke-direct {p0, v9}, Lmiui/net/MiCloudSyncAdapterBase;->turnOffSyncAndNotify(I)V

    .line 196
    const/4 v0, 0x0

    .line 198
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 199
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    return-void
.end method

.method private suspendSync()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 246
    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 248
    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 249
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    add-long v5, v8, v10

    .line 251
    .local v5, resumeTime:J
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.miui.net.RESUME_SYNC"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "authority"

    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v8, "account"

    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v8, v12, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 255
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v13, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 257
    invoke-virtual {p0}, Lmiui/net/MiCloudSyncAdapterBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 258
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v8, "ResumeSyncTime_%s"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, prefResumeSyncTime:Ljava/lang/String;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 261
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    return-void
.end method

.method private turnOffSyncAndNotify(I)V
    .locals 13
    .parameter "messageId"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 220
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 221
    .local v6, pm:Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v6, v7, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 222
    .local v5, pi:Landroid/content/pm/ProviderInfo;
    invoke-virtual {v5, v6}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 224
    .local v1, label:Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".SYNC_SETTINGS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v7, "authority"

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v7, "account"

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v7, v11, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 230
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x108007c

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    const v9, 0x60c0133

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 237
    .local v2, n:Landroid/app/Notification;
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 238
    .local v3, nm:Landroid/app/NotificationManager;
    invoke-virtual {v3, v11, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 240
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-static {v7, v8, v11}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 242
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 243
    return-void
.end method


# virtual methods
.method protected getPhoneInfo()Z
    .locals 14

    .prologue
    .line 266
    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTickets:[Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTickets:[Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-object v13, v11, v12

    aput-object v13, v9, v10

    iput-object v13, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTicket:Ljava/lang/String;

    .line 267
    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumbers:[Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumbers:[Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-object v13, v11, v12

    aput-object v13, v9, v10

    iput-object v13, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumber:Ljava/lang/String;

    .line 269
    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiui/msim/telephony/MiuiTelephonyManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiTelephonyManager;

    move-result-object v8

    .line 270
    .local v8, tm:Lmiui/msim/telephony/IMiuiTelephonyManager;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v8}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimCount()I

    move-result v9

    if-ge v3, v9, :cond_8

    .line 271
    invoke-interface {v8, v3}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimId(I)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, simId:Ljava/lang/String;
    const-string v9, "MiCloudSyncAdapterBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPhoneInfo: simId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v5, v11}, Lmiui/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 270
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :cond_1
    invoke-interface {v8}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 278
    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v11, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-static {v9, v3, v10, v11}, Lmiui/util/MiCloudSyncUtils;->getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 280
    .local v6, subSyncState:Z
    if-eqz v6, :cond_0

    .line 284
    .end local v6           #subSyncState:Z
    :cond_2
    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lmiui/net/CloudManager;->getActivatedPhoneNumber(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v1

    .line 285
    .local v1, c:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    if-nez v1, :cond_3

    .line 286
    const-string v9, "MiCloudSyncAdapterBase"

    const-string v10, "getPhoneInfo: Null CloudManagerFuture."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v9, 0x0

    .line 334
    .end local v1           #c:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    .end local v5           #simId:Ljava/lang/String;
    :goto_2
    return v9

    .line 289
    .restart local v1       #c:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    .restart local v5       #simId:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    .line 290
    .local v7, ticket:Ljava/lang/String;
    const/4 v4, 0x0

    .line 293
    .local v4, number:Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 294
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_4

    .line 295
    const-string v9, "MiCloudSyncAdapterBase"

    const-string v10, "getPhoneInfo: Null CloudManagerFuture bundle."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 308
    .end local v0           #b:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 309
    .local v2, e:Ljava/io/IOException;
    const-string v9, "MiCloudSyncAdapterBase"

    const-string v10, "getPhoneInfo: "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    iget-object v9, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v9, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_1

    .line 298
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_4
    :try_start_1
    const-string v9, "phone_ticket"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 299
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 300
    const-string v9, "MiCloudSyncAdapterBase"

    const-string v10, "getPhoneInfo: Null or empty ticket."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 312
    .end local v0           #b:Landroid/os/Bundle;
    :catch_1
    move-exception v2

    .line 313
    .local v2, e:Lmiui/net/exception/OperationCancelledException;
    const-string v9, "MiCloudSyncAdapterBase"

    const-string v10, "getPhoneInfo: "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 303
    .end local v2           #e:Lmiui/net/exception/OperationCancelledException;
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_5
    :try_start_2
    const-string v9, "activate_phone"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 305
    const-string v9, "MiCloudSyncAdapterBase"

    const-string v10, "getPhoneInfo: Null or empty number."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 315
    .end local v0           #b:Landroid/os/Bundle;
    :catch_2
    move-exception v2

    .line 316
    .local v2, e:Lmiui/net/exception/CloudServiceFailureException;
    const-string v9, "MiCloudSyncAdapterBase"

    const-string v10, "getPhoneInfo: "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    iget-object v9, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v9, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_1

    .line 319
    .end local v2           #e:Lmiui/net/exception/CloudServiceFailureException;
    :catch_3
    move-exception v2

    .line 320
    .local v2, e:Lmiui/net/exception/NoActivateAccountException;
    const-string v9, "MiCloudSyncAdapterBase"

    const-string v10, "getPhoneInfo: "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    const/4 v9, 0x0

    goto :goto_2

    .line 324
    .end local v2           #e:Lmiui/net/exception/NoActivateAccountException;
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_6
    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTickets:[Ljava/lang/String;

    aput-object v7, v9, v3

    .line 325
    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumbers:[Ljava/lang/String;

    aput-object v4, v9, v3

    .line 326
    if-nez v3, :cond_7

    .line 327
    iput-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTicket:Ljava/lang/String;

    .line 328
    iput-object v4, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumber:Ljava/lang/String;

    .line 330
    :cond_7
    const-string v9, "MiCloudSyncAdapterBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPhoneInfo: ticket="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTickets:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "number="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumbers:[Ljava/lang/String;

    aget-object v11, v11, v3

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lmiui/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 334
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #c:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #simId:Ljava/lang/String;
    .end local v7           #ticket:Ljava/lang/String;
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_2
.end method

.method protected abstract onPerformMiCloudSync(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 21
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 79
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    .line 80
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    .line 81
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/net/MiCloudSyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    .line 83
    invoke-virtual/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 84
    .local v20, sp:Landroid/content/SharedPreferences;
    const-string v3, "ResumeSyncTime_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 85
    .local v13, prefResumeSyncTime:Ljava/lang/String;
    const-wide/16 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v13, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 86
    .local v16, resumeTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v14, v16, v3

    .line 87
    .local v14, remaining:J
    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-lez v3, :cond_1

    .line 88
    const-string v3, "MiCloudSyncAdapterBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPerformSync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync suspended. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v14, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds to resume."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-eqz v3, :cond_2

    .line 93
    const-string v3, "MiCloudSyncAdapterBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPerformSync: The suspension of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync is expired now."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 95
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v3, 0x0

    invoke-interface {v10, v13, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 100
    .local v2, am:Landroid/accounts/AccountManager;
    const/16 v19, 0x0

    .line 101
    .local v19, retryCount:I
    const/4 v12, 0x1

    .line 104
    .local v12, maxRetryCount:I
    :cond_3
    const/16 v18, 0x0

    .line 106
    .local v18, retry:Z
    :try_start_0
    const-string v3, "MiCloudSyncAdapterBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPerformSync: getting auth token. authority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthType:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v11

    .line 108
    .local v11, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-nez v11, :cond_4

    .line 109
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync: Null future."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 118
    .end local v11           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v9

    .line 119
    .local v9, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    .end local v9           #e:Landroid/accounts/OperationCanceledException;
    .restart local v11       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_4
    :try_start_1
    invoke-interface {v11}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 113
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync: Null future result."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 121
    .end local v11           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_1
    move-exception v9

    .line 122
    .local v9, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 116
    .end local v9           #e:Landroid/accounts/AuthenticatorException;
    .restart local v11       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_5
    :try_start_2
    invoke-interface {v11}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "authtoken"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    .line 131
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync: No ext token string."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 124
    .end local v11           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_2
    move-exception v9

    .line 125
    .local v9, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    .line 126
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 134
    .end local v9           #e:Ljava/io/IOException;
    .restart local v11       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-static {v3}, Lmiui/net/ExtendedAuthToken;->parse(Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtToken:Lmiui/net/ExtendedAuthToken;

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtToken:Lmiui/net/ExtendedAuthToken;

    if-nez v3, :cond_7

    .line 136
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync: Cannot parse ext token."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 141
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lmiui/net/MiCloudSyncAdapterBase;->onPerformMiCloudSync(Landroid/os/Bundle;)V
    :try_end_3
    .catch Lmiui/net/exception/MiCloudServerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 172
    :cond_8
    :goto_1
    if-eqz v18, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 142
    :catch_3
    move-exception v9

    .line 143
    .local v9, e:Lmiui/net/exception/MiCloudServerException;
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    iget v3, v9, Lmiui/net/exception/MiCloudServerException;->statusCode:I

    packed-switch v3, :pswitch_data_0

    .line 164
    :pswitch_0
    iget v3, v9, Lmiui/net/exception/MiCloudServerException;->statusCode:I

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    .line 165
    invoke-direct/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->handle5xx()V

    goto :goto_1

    .line 146
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->handleBadRequest()V

    goto :goto_1

    .line 149
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->handleUnauthorized()V

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    .line 152
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_8

    .line 153
    const/16 v18, 0x1

    .line 154
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 158
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->handleForbidden()V

    goto :goto_1

    .line 161
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->handleNotAcceptable()V

    goto :goto_1

    .line 167
    :cond_9
    const-string v3, "MiCloudSyncAdapterBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized server error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lmiui/net/exception/MiCloudServerException;->statusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
