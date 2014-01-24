.class Lcom/android/server/am/ActivityManagerService$Injector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static final sMonitorPrivacyPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$Injector;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    .line 241
    sget-object v0, Lcom/android/server/am/ActivityManagerService$Injector;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/android/server/am/ActivityManagerService$Injector;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/android/server/am/ActivityManagerService$Injector;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCallingUidPackage(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 5
    .parameter "service"
    .parameter "token"

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 220
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-object v3

    .line 221
    :cond_1
    iget v0, v2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 222
    .local v0, callingUid:I
    if-lez v0, :cond_0

    .line 224
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, packages:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 226
    const/4 v4, 0x0

    aget-object v3, v1, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v1           #packages:[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static isForegroundApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .parameter "service"
    .parameter "app"
    .parameter "TOP_APP"

    .prologue
    const/4 v0, 0x1

    .line 181
    if-eq p1, p2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_launcher_in_memory"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static monitorPrivacyModeChange(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v0, privacyModeFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PRIVACY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/ActivityManagerService$Injector$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityManagerService$Injector$1;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    return-void
.end method

.method static showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Z
    .locals 6
    .parameter "service"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 196
    const-string v1, "app"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 197
    .local v4, proc:Lcom/android/server/am/ProcessRecord;
    const-string v1, "result"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppErrorResult;

    .line 198
    .local v3, res:Lcom/android/server/am/AppErrorResult;
    const-string v1, "crash"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 199
    .local v5, crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/provider/ExtraSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    new-instance v0, Lcom/android/server/am/AppErrorDialog;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 201
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 202
    iput-object v0, v4, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 210
    .end local v0           #d:Landroid/app/Dialog;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 204
    :cond_0
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v5, v2}, Lcom/android/server/am/MiuiErrorReport;->sendFcErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Z)V

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontLocked()V

    .line 208
    invoke-virtual {v3, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V

    goto :goto_0
.end method
