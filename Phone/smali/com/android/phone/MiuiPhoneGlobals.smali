.class public Lcom/android/phone/MiuiPhoneGlobals;
.super Lcom/android/phone/PhoneGlobals;
.source "MiuiPhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiPhoneGlobals$Handler;
    }
.end annotation


# instance fields
.field private mCallForwardStatusQueried:Z

.field private mCurrentServiceState:I

.field private mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

.field private mIntentAfterCall:Landroid/content/Intent;

.field private mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPreferredNetworkTypeInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreferredNetworkTypeInitialized:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCallForwardStatusQueried:Z

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentServiceState:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mIntentAfterCall:Landroid/content/Intent;

    .line 93
    new-instance v0, Lcom/android/phone/MiuiPhoneGlobals$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiPhoneGlobals$Handler;-><init>(Lcom/android/phone/MiuiPhoneGlobals;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiPhoneGlobals;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneGlobals;->onBluetoothAvailabilityChanged()V

    return-void
.end method

.method static createPhoneGlobals(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .parameter "app"

    .prologue
    .line 87
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/MiuiPhoneGlobals;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiPhoneGlobals;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/phone/PhoneGlobals;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private isInCallScreenForeground()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isShowingCallScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v3

    .line 159
    :cond_1
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiPhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 160
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 162
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 163
    .local v2, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    const-string v5, "com.android.phone.MiuiInCallScreen"

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .end local v2           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    move v3, v4

    .line 167
    goto :goto_0
.end method

.method private onBluetoothAvailabilityChanged()V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 343
    .local v0, incallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 352
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isInCallScreenForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    check-cast v0, Lcom/android/phone/MiuiInCallScreen;

    .end local v0           #incallScreen:Lcom/android/phone/InCallScreen;
    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallScreen;->onBluetoothAvailabilityChanged()V

    .line 356
    :cond_1
    return-void

    .line 348
    .restart local v0       #incallScreen:Lcom/android/phone/InCallScreen;
    :cond_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-super {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;)V

    .line 246
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 251
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_4

    .line 252
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 253
    .local v1, state:I
    iget v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentServiceState:I

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    iget-boolean v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCallForwardStatusQueried:Z

    if-nez v4, :cond_2

    .line 256
    const-string v4, "persist.sys.cta"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 257
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "unconditional_call_forwarding"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v2}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    .line 262
    :goto_1
    iput-boolean v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCallForwardStatusQueried:Z

    .line 264
    :cond_2
    iput v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentServiceState:I

    goto :goto_0

    .line 260
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_1

    .line 266
    .end local v1           #state:I
    :cond_4
    iput v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentServiceState:I

    goto :goto_0
.end method

.method initializNetworkSelectionMode()V
    .locals 4

    .prologue
    .line 454
    invoke-static {}, Lcom/android/phone/MiuiPhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "button_auto_select_key"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    invoke-static {}, Lcom/android/phone/MiuiPhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 457
    .local v0, ci:Lcom/android/internal/telephony/CommandsInterface;
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 458
    .local v1, msg:Landroid/os/Message;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 460
    .end local v0           #ci:Lcom/android/internal/telephony/CommandsInterface;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected initializPreferredNetworkType(III)V
    .locals 6
    .parameter "type"
    .parameter "preferredNetworkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreferredNetworkTypeInitialized:Z

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreferredNetworkTypeInitialized:Z

    .line 419
    invoke-static {}, Lcom/android/phone/MiuiPhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 421
    .local v2, ci:Lcom/android/internal/telephony/CommandsInterface;
    new-instance v0, Lcom/android/phone/MiuiPhoneGlobals$2;

    move-object v1, p0

    move v3, p2

    move v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiPhoneGlobals$2;-><init>(Lcom/android/phone/MiuiPhoneGlobals;Lcom/android/internal/telephony/CommandsInterface;III)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiPhoneGlobals$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 451
    .end local v2           #ci:Lcom/android/internal/telephony/CommandsInterface;
    :cond_0
    return-void
.end method

.method isBluetoothAvailable()Z
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mBluetoothHeadsetState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/phone/PhoneGlobals;->onCreate()V

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiPhoneGlobals;->setTheme(I)V

    .line 102
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->onNewPhoneRegisterToCallManager(Lcom/android/internal/telephony/Phone;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiDelayedProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    .line 108
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 111
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.WB_AMR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/android/phone/MiuiPhoneGlobals$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiPhoneGlobals$1;-><init>(Lcom/android/phone/MiuiPhoneGlobals;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/MiuiPhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiPhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->initRepeatedCalls(Landroid/content/Context;)V

    .line 142
    invoke-static {p0}, Lcom/android/phone/MiuiAwesomeInComingCallWidget;->initWidget(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method onHeadsetAvailabilityChanged()V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    invoke-super {p0}, Lcom/android/phone/PhoneGlobals;->onHeadsetAvailabilityChanged()V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 323
    .local v0, incallScreen:Lcom/android/phone/InCallScreen;
    iget-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_3

    .line 326
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 335
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isInCallScreenForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    check-cast v0, Lcom/android/phone/MiuiInCallScreen;

    .end local v0           #incallScreen:Lcom/android/phone/InCallScreen;
    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallScreen;->onHeadsetAvailabilityChanged()V

    goto :goto_0

    .line 329
    .restart local v0       #incallScreen:Lcom/android/phone/InCallScreen;
    :cond_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_1

    .line 332
    :cond_3
    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_1
.end method

.method protected onIccStatusChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 359
    const-string v4, "PhoneApp"

    const-string v5, "onIccStatusChanged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-boolean v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreferredNetworkTypeInitialized:Z

    if-nez v4, :cond_4

    .line 361
    invoke-static {}, Lcom/android/phone/MiuiPhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 363
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 364
    .local v3, type:I
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 366
    :cond_0
    const/4 v3, 0x2

    .line 375
    :goto_0
    const/4 v2, 0x0

    .line 376
    .local v2, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 377
    const/16 v2, 0x8

    .line 379
    :cond_1
    const/4 v0, 0x1

    .line 380
    .local v0, cdmaSubscription:I
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default cdma subscription set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 386
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configured network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "subscription_mode"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 392
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configured cdma subscription set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-ne v3, v7, :cond_7

    .line 395
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v4

    if-eq v4, v7, :cond_2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    .line 398
    const/16 v2, 0x8

    .line 399
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrected network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->initializNetworkSelectionMode()V

    .line 408
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/phone/MiuiPhoneGlobals;->initializPreferredNetworkType(III)V

    .line 413
    .end local v0           #cdmaSubscription:I
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #preferredNetworkMode:I
    .end local v3           #type:I
    :cond_4
    return-void

    .line 367
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #type:I
    :cond_5
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 369
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 402
    .restart local v0       #cdmaSubscription:I
    .restart local v2       #preferredNetworkMode:I
    :cond_7
    if-ne v3, v8, :cond_3

    invoke-static {p0}, Lcom/android/phone/MiuiTelephonyCapabilities;->isWorldPhone(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 403
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 404
    const/4 v2, 0x4

    .line 405
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrected network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setIntentAfterCall(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mIntentAfterCall:Landroid/content/Intent;

    .line 272
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .locals 1
    .parameter "callOrigin"

    .prologue
    .line 276
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-super {p0, p1}, Lcom/android/phone/PhoneGlobals;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 286
    :goto_0
    return-void

    .line 281
    :cond_0
    if-nez p1, :cond_1

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {}, Lcom/android/phone/MiuiPhoneGlobals;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 172
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 173
    invoke-super {p0, p1}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    .line 183
    .local v0, acquireProximityWakeLock:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "button_enable_proximity"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 185
    .local v1, enableProximityWakeLock:Z
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    .line 189
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isHardKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_2
    move v4, v6

    .line 191
    .local v4, screenOnImmediately:Z
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "button_enforce_proximity_during_ringing"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v7, :cond_a

    move v3, v6

    .line 196
    .local v3, proximityWhenIncall:Z
    :goto_2
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 198
    :cond_3
    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 201
    :cond_4
    if-nez v3, :cond_5

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isCallBeginning()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_5
    if-nez v4, :cond_b

    .line 204
    const/4 v0, 0x1

    .line 212
    .end local v3           #proximityWhenIncall:Z
    .end local v4           #screenOnImmediately:Z
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isCallBeginning()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_c

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v5, :cond_c

    .line 215
    :cond_7
    iget-object v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v5}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->release()V

    .line 220
    :cond_8
    :goto_4
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 222
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getProximityWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 223
    .local v2, proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    monitor-enter v2

    .line 224
    if-eqz v0, :cond_e

    .line 225
    :try_start_0
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_d

    .line 226
    const-string v5, "PhoneApp"

    const-string v6, "updateProximitySensorMode: acquiring..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 239
    :goto_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .end local v2           #proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :cond_9
    move v4, v5

    .line 189
    goto :goto_1

    .restart local v4       #screenOnImmediately:Z
    :cond_a
    move v3, v5

    .line 191
    goto :goto_2

    .line 208
    .restart local v3       #proximityWhenIncall:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    .line 216
    .end local v3           #proximityWhenIncall:Z
    .end local v4           #screenOnImmediately:Z
    :cond_c
    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_8

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v5, :cond_8

    .line 218
    iget-object v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v5}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->delayAquire()V

    goto :goto_4

    .line 229
    .restart local v2       #proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :cond_d
    :try_start_1
    const-string v5, "PhoneApp"

    const-string v6, "updateProximitySensorMode: lock already held."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 232
    :cond_e
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 233
    const-string v5, "PhoneApp"

    const-string v6, "updateProximitySensorMode: releasing..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5

    .line 236
    :cond_f
    const-string v5, "PhoneApp"

    const-string v6, "updateProximitySensorMode: lock already released."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method
