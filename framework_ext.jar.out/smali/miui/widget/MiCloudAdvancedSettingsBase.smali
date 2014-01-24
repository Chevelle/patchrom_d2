.class public abstract Lmiui/widget/MiCloudAdvancedSettingsBase;
.super Landroid/preference/PreferenceActivity;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;,
        Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneCallback;,
        Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVATE_STATUS_CHANGED:Ljava/lang/String; = "com.xiaomi.xmsf.action.ACTIVATE_STATUS_CHANGED"

.field private static final ACTIVATE_STATUS_ERROR:I = 0x0

.field private static final ACTIVATE_STATUS_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MiCloudAdvancedSettingsBase"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActivateStatus:[I

.field private mCheckPhoneProgressDialog:Landroid/app/DialogFragment;

.field private mCheckPhoneTask:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

.field private mCloudManager:Lmiui/net/CloudManager;

.field private mGetActivateStatusTask:Landroid/os/AsyncTask;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMainSyncPref:Lmiui/widget/SyncStatePreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSim1SyncPref:Lmiui/widget/SyncStatePreference;

.field private mSim2SyncPref:Lmiui/widget/SyncStatePreference;

.field private mSimCount:I

.field private mSimInsertStates:[Z

.field private mStateSaved:Z

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mHandler:Landroid/os/Handler;

    .line 785
    new-instance v0, Lmiui/widget/MiCloudAdvancedSettingsBase$7;

    invoke-direct {v0, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$7;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 809
    new-instance v0, Lmiui/widget/MiCloudAdvancedSettingsBase$8;

    invoke-direct {v0, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$8;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 889
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/net/CloudManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCloudManager:Lmiui/net/CloudManager;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/widget/MiCloudAdvancedSettingsBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncStateForAllSim()V

    return-void
.end method

.method static synthetic access$1100(Lmiui/widget/MiCloudAdvancedSettingsBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneProgressDialog:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$1300(Lmiui/widget/MiCloudAdvancedSettingsBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->processCheckPhoneResult()V

    return-void
.end method

.method static synthetic access$200(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/MiCloudAdvancedSettingsBase;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:[I

    return-object v0
.end method

.method static synthetic access$500(Lmiui/widget/MiCloudAdvancedSettingsBase;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(I)V

    return-void
.end method

.method static synthetic access$700(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->startActivate(I)V

    return-void
.end method

.method static synthetic access$800(Lmiui/widget/MiCloudAdvancedSettingsBase;Lmiui/widget/SyncStatePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->enableSync(Lmiui/widget/SyncStatePreference;Z)V

    return-void
.end method

.method static synthetic access$900(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->showSendSmsForSyncDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private enableSync(Lmiui/widget/SyncStatePreference;Z)V
    .locals 7
    .parameter "syncPref"
    .parameter "syncOn"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 519
    invoke-virtual {p1}, Lmiui/widget/SyncStatePreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 520
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {p1}, Lmiui/widget/SyncStatePreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, authority:Ljava/lang/String;
    const/4 v3, 0x0

    .line 522
    .local v3, restartSync:Z
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    if-ne p1, v6, :cond_5

    .line 524
    invoke-static {v0, v1, p2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 526
    iget v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimCount:I

    if-le v6, v4, :cond_0

    .line 528
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_3

    .line 529
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v0, v1, p2}, Lmiui/util/MiCloudSyncUtils;->setAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;Z)V

    .line 539
    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 540
    invoke-virtual {p0, p2, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->canSync(ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 541
    invoke-static {v0, v1, p2}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 585
    :cond_1
    :goto_1
    const-string v5, "sms"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 586
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.xiaomi.xmsf.action.UPLOAD_SIM_ON_DEVICE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "extra_upload_opt"

    if-eqz p2, :cond_f

    :goto_2
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 592
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 531
    :cond_3
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_0

    .line 532
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v0, v1, p2}, Lmiui/util/MiCloudSyncUtils;->setAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 545
    :cond_4
    invoke-static {v0, v1, p2}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 548
    :cond_5
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    if-ne p1, v6, :cond_a

    .line 549
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v0, v1, p2}, Lmiui/util/MiCloudSyncUtils;->setAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;Z)V

    .line 551
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v6}, Lmiui/widget/SyncStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 553
    if-nez p2, :cond_6

    invoke-direct {p0, v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->isSyncing(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .line 554
    :goto_3
    const/4 p2, 0x1

    .line 560
    :goto_4
    if-eqz v3, :cond_8

    .line 561
    invoke-direct {p0, v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->restartSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v3, v5

    .line 553
    goto :goto_3

    .line 557
    :cond_7
    invoke-static {v0, v1, p2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_4

    .line 562
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p0, p2, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->canSync(ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 563
    :cond_9
    invoke-static {v0, v1, p2}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 566
    :cond_a
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    if-ne p1, v6, :cond_1

    .line 567
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4, v0, v1, p2}, Lmiui/util/MiCloudSyncUtils;->setAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;Z)V

    .line 569
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v6}, Lmiui/widget/SyncStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 571
    if-nez p2, :cond_b

    invoke-direct {p0, v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->isSyncing(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v3, v4

    .line 572
    :goto_5
    const/4 p2, 0x1

    .line 578
    :goto_6
    if-eqz v3, :cond_d

    .line 579
    invoke-direct {p0, v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->restartSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move v3, v5

    .line 571
    goto :goto_5

    .line 575
    :cond_c
    invoke-static {v0, v1, p2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_6

    .line 580
    :cond_d
    if-eqz p2, :cond_e

    invoke-virtual {p0, p2, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->canSync(ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 581
    :cond_e
    invoke-static {v0, v1, p2}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 587
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_f
    const/4 v4, 0x2

    goto/16 :goto_2
.end method

.method private handleIntent()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 320
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 321
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "authority"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, authority:Ljava/lang/String;
    const-string v8, "account"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 323
    .local v0, account:Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 324
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "No authority contained"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 326
    :cond_0
    if-nez v0, :cond_1

    .line 327
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "No account contained"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 330
    :cond_1
    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    .line 331
    iget-object v8, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v8, :cond_2

    .line 332
    iget-object v8, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v8, v1}, Lmiui/widget/SyncStatePreference;->setAuthority(Ljava/lang/String;)V

    .line 333
    iget-object v8, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v8, v0}, Lmiui/widget/SyncStatePreference;->setAccount(Landroid/accounts/Account;)V

    .line 335
    :cond_2
    iget-object v8, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v8, :cond_3

    .line 336
    iget-object v8, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v8, v1}, Lmiui/widget/SyncStatePreference;->setAuthority(Ljava/lang/String;)V

    .line 337
    iget-object v8, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v8, v0}, Lmiui/widget/SyncStatePreference;->setAccount(Landroid/accounts/Account;)V

    .line 339
    :cond_3
    iget-object v8, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v8, :cond_4

    .line 340
    iget-object v8, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v8, v1}, Lmiui/widget/SyncStatePreference;->setAuthority(Ljava/lang/String;)V

    .line 341
    iget-object v8, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v8, v0}, Lmiui/widget/SyncStatePreference;->setAccount(Landroid/accounts/Account;)V

    .line 344
    :cond_4
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 345
    .local v2, bar:Landroid/app/ActionBar;
    if-eqz v2, :cond_7

    .line 346
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 347
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 349
    .local v5, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v5, :cond_5

    .line 350
    const-string v8, "MiCloudAdvancedSettingsBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no provider info for authority:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v5           #providerInfo:Landroid/content/pm/ProviderInfo;
    :goto_0
    return-void

    .line 353
    .restart local v5       #providerInfo:Landroid/content/pm/ProviderInfo;
    :cond_5
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 355
    .local v6, providerLabel:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 356
    const-string v8, "MiCloudAdvancedSettingsBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Provider needs a label for authority \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    move-object v6, v1

    .line 360
    :cond_6
    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    .end local v5           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v6           #providerLabel:Ljava/lang/CharSequence;
    :cond_7
    const-string v8, "extra_activate_err_code"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 365
    .local v3, errorCode:I
    const-string v8, "extra_sim_index"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 367
    .local v7, simIndex:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 369
    :pswitch_0
    new-instance v8, Lmiui/widget/MiCloudAdvancedSettingsBase$2;

    invoke-direct {v8, p0, v7}, Lmiui/widget/MiCloudAdvancedSettingsBase$2;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    new-instance v9, Lmiui/widget/MiCloudAdvancedSettingsBase$3;

    invoke-direct {v9, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$3;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    new-instance v10, Lmiui/widget/MiCloudAdvancedSettingsBase$4;

    invoke-direct {v10, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$4;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    invoke-virtual {p0, v3, v8, v9, v10}, Lmiui/widget/MiCloudAdvancedSettingsBase;->showReactivateDialog(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method private handleSyncPrefClick(ILmiui/widget/SyncStatePreference;)V
    .locals 9
    .parameter "simIndex"
    .parameter "syncPref"

    .prologue
    const/4 v7, 0x1

    .line 439
    invoke-virtual {p2}, Lmiui/widget/SyncStatePreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, authority:Ljava/lang/String;
    invoke-virtual {p2}, Lmiui/widget/SyncStatePreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 441
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 443
    .local v3, syncAutomatically:Z
    invoke-virtual {p2}, Lmiui/widget/SyncStatePreference;->isOneTimeSyncMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    invoke-static {v0, v1, v7}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-virtual {p2}, Lmiui/widget/SyncStatePreference;->isChecked()Z

    move-result v4

    .line 447
    .local v4, syncOn:Z
    if-eqz v4, :cond_2

    invoke-static {v1}, Lmiui/util/MiCloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 448
    new-instance v5, Lmiui/widget/MiCloudAdvancedSettingsBase$5;

    invoke-direct {v5, p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$5;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    invoke-static {p0, p1, v5}, Lmiui/util/MiCloudSyncUtils;->checkSimAvailability(Landroid/app/Activity;ILjava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    :cond_2
    move v2, v3

    .line 459
    .local v2, oldSyncState:Z
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    if-eq p2, v5, :cond_3

    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    if-ne p2, v5, :cond_4

    .line 460
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, v0, v1}, Lmiui/util/MiCloudSyncUtils;->getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    .line 463
    :cond_4
    if-eq v4, v2, :cond_0

    .line 464
    if-eqz v4, :cond_5

    invoke-static {v1}, Lmiui/util/MiCloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 469
    new-instance v5, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

    new-instance v6, Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    invoke-direct {v6, p0, p1, p2}, Lmiui/widget/MiCloudAdvancedSettingsBase$6;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;ILmiui/widget/SyncStatePreference;)V

    invoke-direct {v5, p0, p0, v6}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/app/Activity;Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneCallback;)V

    iput-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneTask:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

    .line 509
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneTask:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

    new-array v6, v7, [Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 511
    :cond_5
    invoke-direct {p0, p2, v4}, Lmiui/widget/MiCloudAdvancedSettingsBase;->enableSync(Lmiui/widget/SyncStatePreference;Z)V

    .line 512
    invoke-direct {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(I)V

    goto :goto_0
.end method

.method private isSyncing(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 665
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    .line 666
    .local v0, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 667
    .local v2, syncInfo:Landroid/content/SyncInfo;
    iget-object v3, v2, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v3, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    const/4 v3, 0x1

    .line 672
    .end local v2           #syncInfo:Landroid/content/SyncInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processCheckPhoneResult()V
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mStateSaved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneProgressDialog:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneProgressDialog:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 781
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneProgressDialog:Landroid/app/DialogFragment;

    .line 783
    :cond_0
    return-void
.end method

.method private restartSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 603
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 604
    return-void
.end method

.method private setSyncPrefOff(Lmiui/widget/SyncStatePreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 676
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    .line 677
    invoke-virtual {p1, v1}, Lmiui/widget/SyncStatePreference;->setChecked(Z)V

    .line 678
    invoke-virtual {p1, v1}, Lmiui/widget/SyncStatePreference;->setActive(Z)V

    .line 679
    invoke-virtual {p1, v1}, Lmiui/widget/SyncStatePreference;->setPending(Z)V

    .line 680
    invoke-virtual {p1, v1}, Lmiui/widget/SyncStatePreference;->setFailed(Z)V

    .line 681
    return-void
.end method

.method private showAlertDialog(II)V
    .locals 3
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 703
    new-instance v1, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lmiui/widget/SimpleDialogFragment;

    move-result-object v0

    .line 709
    .local v0, f:Lmiui/widget/SimpleDialogFragment;
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/widget/SimpleDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 710
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AlertDialog"

    invoke-virtual {v0, v1, v2}, Lmiui/widget/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method private showSendSmsForSyncDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .parameter "onSendSmsListener"
    .parameter "onDismissListener"

    .prologue
    .line 690
    new-instance v1, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    const v2, 0x60c01ad

    invoke-virtual {p0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v1

    const v2, 0x60c01ac

    invoke-virtual {p0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lmiui/widget/SimpleDialogFragment;

    move-result-object v0

    .line 696
    .local v0, f:Lmiui/widget/SimpleDialogFragment;
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/widget/SimpleDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 697
    const/high16 v1, 0x60c

    invoke-virtual {v0, v1, p1}, Lmiui/widget/SimpleDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 698
    invoke-virtual {v0, p2}, Lmiui/widget/SimpleDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 699
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SendSMSProgress"

    invoke-virtual {v0, v1, v2}, Lmiui/widget/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method private startActivate(I)V
    .locals 3
    .parameter "simIndex"

    .prologue
    .line 595
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.action.START_ACTIVATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_sim_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    const-string v1, "extra_force_send"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 599
    return-void
.end method

.method private updateSyncState(I)V
    .locals 8
    .parameter "simIndex"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 614
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    :goto_0
    return-void

    .line 617
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->needActivate()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_2

    move v4, v3

    .line 618
    .local v4, nosim:Z
    :goto_1
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->needActivate()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:[I

    aget v2, v2, p1

    if-ne v2, v3, :cond_3

    move v5, v3

    .line 620
    .local v5, activating:Z
    :goto_2
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v1

    .line 621
    .local v1, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v2, :cond_6

    .line 622
    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    aget-boolean v0, v2, v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_4

    .line 623
    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->needActivate()Z

    move-result v4

    .end local v4           #nosim:Z
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getMainSyncPrefSummary()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lmiui/util/MiCloudSyncUtils;->updateSyncStatus(Landroid/content/Context;Ljava/util/List;Lmiui/widget/SyncStatePreference;ZZZLjava/lang/String;)V

    .line 661
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->onSyncStateUpdate()V

    goto :goto_0

    .end local v1           #currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v5           #activating:Z
    :cond_2
    move v4, v0

    .line 617
    goto :goto_1

    .restart local v4       #nosim:Z
    :cond_3
    move v5, v0

    .line 618
    goto :goto_2

    .line 627
    .restart local v1       #currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    .restart local v5       #activating:Z
    :cond_4
    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_1

    :cond_5
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 628
    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getMainSyncPrefSummary()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lmiui/util/MiCloudSyncUtils;->updateSyncStatus(Landroid/content/Context;Ljava/util/List;Lmiui/widget/SyncStatePreference;ZZZLjava/lang/String;)V

    goto :goto_3

    .line 634
    :cond_6
    if-nez p1, :cond_8

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v0, :cond_8

    .line 635
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v6}, Lmiui/widget/SyncStatePreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    iget-object v7, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v7}, Lmiui/widget/SyncStatePreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, p1, v6, v7}, Lmiui/util/MiCloudSyncUtils;->getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/SyncStatePreference;->setChecked(Z)V

    .line 639
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v0}, Lmiui/widget/SyncStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 640
    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getMainSyncPrefSummary()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lmiui/util/MiCloudSyncUtils;->updateSyncStatus(Landroid/content/Context;Ljava/util/List;Lmiui/widget/SyncStatePreference;ZZZLjava/lang/String;)V

    goto :goto_3

    .line 644
    :cond_7
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-direct {p0, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->setSyncPrefOff(Lmiui/widget/SyncStatePreference;)V

    goto :goto_3

    .line 646
    :cond_8
    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v6}, Lmiui/widget/SyncStatePreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    iget-object v7, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v7}, Lmiui/widget/SyncStatePreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, p1, v6, v7}, Lmiui/util/MiCloudSyncUtils;->getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/SyncStatePreference;->setChecked(Z)V

    .line 652
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v0}, Lmiui/widget/SyncStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 653
    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getMainSyncPrefSummary()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lmiui/util/MiCloudSyncUtils;->updateSyncStatus(Landroid/content/Context;Ljava/util/List;Lmiui/widget/SyncStatePreference;ZZZLjava/lang/String;)V

    goto/16 :goto_3

    .line 657
    :cond_9
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-direct {p0, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->setSyncPrefOff(Lmiui/widget/SyncStatePreference;)V

    goto/16 :goto_3
.end method

.method private updateSyncStateForAllSim()V
    .locals 2

    .prologue
    .line 608
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 609
    invoke-direct {p0, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(I)V

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract canSync(ZLjava/lang/String;)Z
.end method

.method protected getMainSyncPrefSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    const-string v0, ""

    return-object v0
.end method

.method protected abstract getMainSyncPreferenceKey()Ljava/lang/String;
.end method

.method protected abstract getPreferencesResourceId()I
.end method

.method protected getSim1SyncPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSim2SyncPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSyncOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 307
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v1, :cond_1

    .line 308
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v0}, Lmiui/widget/SyncStatePreference;->isChecked()Z

    move-result v0

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v1}, Lmiui/widget/SyncStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    :cond_2
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v1}, Lmiui/widget/SyncStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needActivate()Z
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 3
    .parameter "accounts"

    .prologue
    .line 299
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const-string v0, "MiCloudAdvancedSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account removed, finish activity, account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->finish()V

    .line 304
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {p0}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v5

    iput-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCloudManager:Lmiui/net/CloudManager;

    .line 85
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getPreferencesResourceId()I

    move-result v5

    invoke-virtual {p0, v5}, Lmiui/widget/MiCloudAdvancedSettingsBase;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getMainSyncPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmiui/widget/MiCloudAdvancedSettingsBase;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/widget/SyncStatePreference;

    iput-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    .line 89
    invoke-static {p0}, Lmiui/msim/telephony/MiuiTelephonyManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiTelephonyManager;

    move-result-object v4

    .line 90
    .local v4, tm:Lmiui/msim/telephony/IMiuiTelephonyManager;
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getSim1SyncPreferenceKey()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, sim1Pref:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/widget/SyncStatePreference;

    iput-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    .line 93
    invoke-interface {v4, v7}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimIconRes(I)I

    move-result v0

    .line 94
    .local v0, icon:I
    if-lez v0, :cond_0

    .line 95
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v5, v0}, Lmiui/widget/SyncStatePreference;->setIcon(I)V

    .line 98
    .end local v0           #icon:I
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getSim2SyncPreferenceKey()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, sim2Pref:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {p0, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/widget/SyncStatePreference;

    iput-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    .line 101
    invoke-interface {v4, v8}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimIconRes(I)I

    move-result v0

    .line 102
    .restart local v0       #icon:I
    if-lez v0, :cond_1

    .line 103
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v5, v0}, Lmiui/widget/SyncStatePreference;->setIcon(I)V

    .line 107
    .end local v0           #icon:I
    :cond_1
    invoke-interface {v4}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimCount()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:[I

    .line 108
    const/4 v5, 0x2

    new-array v5, v5, [Z

    invoke-interface {v4, v7}, Lmiui/msim/telephony/IMiuiTelephonyManager;->isSimInserted(I)Z

    move-result v6

    aput-boolean v6, v5, v7

    invoke-interface {v4, v8}, Lmiui/msim/telephony/IMiuiTelephonyManager;->isSimInserted(I)Z

    move-result v6

    aput-boolean v6, v5, v8

    iput-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    .line 112
    invoke-interface {v4}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimCount()I

    move-result v5

    iput v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimCount:I

    .line 113
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 114
    .local v1, screen:Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_4

    .line 116
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->needActivate()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    iput-object v9, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    .line 134
    :cond_2
    :goto_0
    invoke-direct {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->handleIntent()V

    .line 136
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->needActivate()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    iput-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mIntentFilter:Landroid/content/IntentFilter;

    .line 138
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "com.xiaomi.xmsf.action.ACTIVATE_STATUS_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "com.xiaomi.xmsf.action.MICLOUD_SIM_STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    :cond_3
    return-void

    .line 124
    :cond_4
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v5, :cond_5

    .line 125
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    iput-object v9, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    .line 128
    :cond_5
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    if-eqz v5, :cond_2

    .line 129
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    iput-object v9, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 252
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneTask:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneTask:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

    invoke-virtual {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->cancel(Z)Z

    .line 255
    :cond_0
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mGetActivateStatusTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mGetActivateStatusTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 258
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 259
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 264
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->setIntent(Landroid/content/Intent;)V

    .line 265
    invoke-direct {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->handleIntent()V

    .line 266
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->onBackPressed()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 241
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 242
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 271
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    if-ne p2, v1, :cond_3

    .line 272
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v1}, Lmiui/widget/SyncStatePreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/MiCloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-direct {p0, v2, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->handleSyncPrefClick(ILmiui/widget/SyncStatePreference;)V

    .line 294
    .end local p2
    :goto_0
    return v0

    .line 275
    .restart local p2
    :cond_0
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-direct {p0, v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->handleSyncPrefClick(ILmiui/widget/SyncStatePreference;)V

    goto :goto_0

    .line 278
    :cond_1
    const-string v1, "MiCloudAdvancedSettingsBase"

    const-string v2, "Unexpected click on main sync pref while no sim is inserted."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_2
    const/4 v1, -0x1

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-direct {p0, v1, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->handleSyncPrefClick(ILmiui/widget/SyncStatePreference;)V

    goto :goto_0

    .line 284
    :cond_3
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    if-ne p2, v1, :cond_4

    .line 285
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-direct {p0, v2, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->handleSyncPrefClick(ILmiui/widget/SyncStatePreference;)V

    goto :goto_0

    .line 287
    :cond_4
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    if-ne p2, v1, :cond_5

    .line 288
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;

    invoke-direct {p0, v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->handleSyncPrefClick(ILmiui/widget/SyncStatePreference;)V

    goto :goto_0

    .line 290
    :cond_5
    instance-of v1, p2, Lmiui/widget/SyncStatePreference;

    if-eqz v1, :cond_6

    .line 291
    check-cast p2, Lmiui/widget/SyncStatePreference;

    .end local p2
    invoke-virtual {p0, p2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->onSubSyncStateUpdate(Lmiui/widget/SyncStatePreference;)V

    goto :goto_0

    .line 294
    .restart local p2
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 157
    const/16 v0, 0xd

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->needActivate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mGetActivateStatusTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mGetActivateStatusTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 169
    :cond_1
    new-instance v2, Lmiui/widget/MiCloudAdvancedSettingsBase$1;

    invoke-direct {v2, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$1;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    new-array v3, v5, [Ljava/lang/Void;

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mGetActivateStatusTask:Landroid/os/AsyncTask;

    .line 228
    :cond_2
    invoke-direct {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncStateForAllSim()V

    .line 229
    iput-boolean v4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mStateSaved:Z

    .line 230
    invoke-direct {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->processCheckPhoneResult()V

    .line 231
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 232
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mStateSaved:Z

    .line 248
    return-void
.end method

.method protected onSubSyncStateUpdate(Lmiui/widget/SyncStatePreference;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 748
    return-void
.end method

.method protected onSyncStateUpdate()V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method public showReactivateDialog(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4
    .parameter "errorCode"
    .parameter "onReactivateListener"
    .parameter "onCancelActivateListener"
    .parameter "onDismissListener"

    .prologue
    .line 400
    new-instance v2, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    const v3, 0x60c0001

    invoke-virtual {p0, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 405
    .local v0, builder:Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    packed-switch p1, :pswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 407
    :pswitch_0
    invoke-static {p0}, Lmiui/net/CloudManager;->isSimSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x60c01af

    :goto_1
    invoke-virtual {p0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    .line 415
    invoke-virtual {v0}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lmiui/widget/SimpleDialogFragment;

    move-result-object v1

    .line 416
    .local v1, f:Lmiui/widget/SimpleDialogFragment;
    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p3}, Lmiui/widget/SimpleDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 417
    const/high16 v2, 0x60c

    invoke-virtual {v1, v2, p2}, Lmiui/widget/SimpleDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 418
    invoke-virtual {v1, p4}, Lmiui/widget/SimpleDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 419
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ReactivateDialog"

    invoke-virtual {v1, v2, v3}, Lmiui/widget/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v1           #f:Lmiui/widget/SimpleDialogFragment;
    :cond_0
    const v2, 0x60c0242

    goto :goto_1

    .line 405
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public turnOffUnActivatedSync()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 423
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v5

    .line 424
    .local v5, syncAdapters:[Landroid/content/SyncAdapterType;
    move-object v0, v5

    .local v0, arr$:[Landroid/content/SyncAdapterType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 425
    .local v4, sa:Landroid/content/SyncAdapterType;
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 426
    iget-object v1, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 427
    .local v1, authority:Ljava/lang/String;
    invoke-static {v1}, Lmiui/util/MiCloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    invoke-static {v6, v1, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 430
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    invoke-static {v6, v1, v8}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 424
    .end local v1           #authority:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .end local v4           #sa:Landroid/content/SyncAdapterType;
    :cond_1
    return-void
.end method
