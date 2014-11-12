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

.field private mCurrentSimType:I

.field private mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

.field private mIntentAfterCall:Landroid/content/Intent;

.field private mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPreSimType:I

.field private mPreferredNetworkTypeInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreferredNetworkTypeInitialized:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCallForwardStatusQueried:Z

    .line 41
    iput v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreSimType:I

    .line 42
    iput v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentServiceState:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mIntentAfterCall:Landroid/content/Intent;

    .line 102
    new-instance v0, Lcom/android/phone/MiuiPhoneGlobals$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiPhoneGlobals$Handler;-><init>(Lcom/android/phone/MiuiPhoneGlobals;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiPhoneGlobals;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneGlobals;->onBluetoothAvailabilityChanged()V

    return-void
.end method

.method static createPhoneGlobals(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .parameter "app"

    .prologue
    .line 96
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

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isShowingCallScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v3

    .line 173
    :cond_1
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiPhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 174
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 175
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 176
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 177
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

    .line 181
    goto :goto_0
.end method

.method private needResetPreferredNetworkMode(II)Z
    .locals 5
    .parameter "preferredNetworkMode"
    .parameter "phoneType"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, needReset:Z
    sget-boolean v3, Lmiui/os/Build;->IS_MIFOUR_LTE:Z

    if-eqz v3, :cond_2

    .line 408
    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_1

    const/16 v3, 0x10

    if-eq p1, v3, :cond_1

    const/16 v3, 0x11

    if-eq p1, v3, :cond_1

    const/16 v3, 0x15

    if-eq p1, v3, :cond_1

    const/16 v3, 0x16

    if-eq p1, v3, :cond_1

    const/16 v3, 0x8

    if-eq p1, v3, :cond_1

    const/16 v3, 0xa

    if-eq p1, v3, :cond_1

    move v0, v1

    .line 428
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 408
    goto :goto_0

    .line 417
    :cond_2
    if-ne p2, v1, :cond_4

    .line 418
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_3

    if-eq p1, v4, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 422
    :cond_4
    if-ne p2, v4, :cond_0

    .line 423
    const/4 v3, 0x4

    if-eq p1, v3, :cond_5

    const/4 v3, 0x5

    if-eq p1, v3, :cond_5

    const/4 v3, 0x6

    if-eq p1, v3, :cond_5
    
    const/16 v3, 0x8
    
    if-eq p1, v3, :cond_5
    
    const/16 v3, 0xa
    
    if-eq p1, v3, :cond_5

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private onBluetoothAvailabilityChanged()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 334
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isInCallScreenForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallScreen;->onBluetoothAvailabilityChanged()V

    .line 338
    :cond_1
    return-void

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 253
    invoke-super {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;)V

    .line 255
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 256
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 258
    .local v1, state:I
    iget v2, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentServiceState:I

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCallForwardStatusQueried:Z

    if-nez v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 261
    iput-boolean v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCallForwardStatusQueried:Z

    .line 263
    :cond_0
    iput v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentServiceState:I

    .line 267
    .end local v1           #state:I
    :goto_0
    return-void

    .line 265
    :cond_1
    iput v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentServiceState:I

    goto :goto_0
.end method

.method protected initializPreferredNetworkType(III)V
    .locals 6
    .parameter "type"
    .parameter "preferredNetworkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreferredNetworkTypeInitialized:Z

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreferredNetworkTypeInitialized:Z

    .line 435
    invoke-static {}, Lcom/android/phone/MiuiPhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 437
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

    .line 467
    .end local v2           #ci:Lcom/android/internal/telephony/CommandsInterface;
    :cond_0
    return-void
.end method

.method isBluetoothAvailable()Z
    .locals 2

    .prologue
    .line 300
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
    .line 107
    invoke-super {p0}, Lcom/android/phone/PhoneGlobals;->onCreate()V

    .line 109
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiPhoneGlobals;->setTheme(I)V

    .line 111
    iget-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->onNewPhoneRegisterToCallManager(Lcom/android/internal/telephony/Phone;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    new-instance v1, Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiDelayedProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    .line 117
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 120
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.WB_AMR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/android/phone/MiuiPhoneGlobals$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiPhoneGlobals$1;-><init>(Lcom/android/phone/MiuiPhoneGlobals;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/MiuiPhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiPhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->initRepeatedCalls(Landroid/content/Context;)V

    .line 156
    invoke-static {p0}, Lcom/android/phone/MiuiAwesomeInComingCallWidget;->initWidget(Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method onHeadsetAvailabilityChanged()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 318
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneGlobals;->isInCallScreenForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallScreen;->onHeadsetAvailabilityChanged()V

    .line 322
    :cond_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0
.end method

.method protected onIccStatusChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 341
    const-string v3, "PhoneApp"

    const-string v4, "onIccStatusChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    iput v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreSimType:I

    .line 344
    iput v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    .line 346
    invoke-static {}, Lcom/android/phone/MiuiPhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 347
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 349
    :cond_0
    iput v7, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    .line 362
    :goto_0
    iget v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    iget v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreSimType:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    if-nez v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreferredNetworkTypeInitialized:Z

    if-nez v3, :cond_6

    .line 364
    :cond_2
    iput-boolean v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreferredNetworkTypeInitialized:Z

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 368
    const/16 v2, 0x8

    .line 370
    :cond_3
    const/4 v0, 0x0

    .line 371
    .local v0, cdmaSubscription:I
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default network mode set is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default cdma subscription set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 377
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configed network mode set is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "subscription_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 383
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configed cdma subscription set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    if-ne v3, v6, :cond_a

    .line 386
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_4

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/MiuiPhoneGlobals;->needResetPreferredNetworkMode(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 388
    :cond_4
    const/16 v2, 0x8

    .line 389
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current prefer network type is invalid, set network mode to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    iget v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/phone/MiuiPhoneGlobals;->initializPreferredNetworkType(III)V

    .line 403
    .end local v0           #cdmaSubscription:I
    .end local v2           #preferredNetworkMode:I
    :cond_6
    :goto_2
    return-void

    .line 350
    :cond_7
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 352
    :cond_8
    iput v6, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    goto/16 :goto_0

    .line 355
    :cond_9
    iput-boolean v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreferredNetworkTypeInitialized:Z

    .line 356
    iget v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    iget v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mPreSimType:I

    if-eq v3, v4, :cond_6

    .line 357
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3, v5}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    goto :goto_2

    .line 391
    .restart local v0       #cdmaSubscription:I
    .restart local v2       #preferredNetworkMode:I
    :cond_a
    iget v3, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCurrentSimType:I

    if-ne v3, v7, :cond_5

    .line 392
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v7, :cond_b

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/MiuiPhoneGlobals;->needResetPreferredNetworkMode(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 394
    :cond_b
    const/16 v2, 0xa

    .line 395
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current prefer network type is invalid, set network mode to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setIntentAfterCall(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mIntentAfterCall:Landroid/content/Intent;

    .line 271
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .locals 1
    .parameter "callOrigin"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mIntentAfterCall:Landroid/content/Intent;

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-static {}, Lcom/android/phone/MiuiPhoneGlobals;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneGlobals;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, acquireProximityWakeLock:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "button_enable_proximity"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 194
    .local v1, enableProximityWakeLock:Z
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 198
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/phone/MiuiPhoneGlobals;->mIsHardKeyboardOpen:Z

    if-eqz v6, :cond_8

    :cond_0
    move v3, v5

    .line 200
    .local v3, screenOnImmediately:Z
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "button_enforce_proximity_during_ringing"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v6, :cond_9

    move v2, v5

    .line 205
    .local v2, proximityWhenIncall:Z
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    :cond_1
    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 210
    :cond_2
    if-nez v2, :cond_3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mBeginningCall:Z

    if-eqz v4, :cond_a

    :cond_3
    if-nez v3, :cond_a

    .line 213
    const/4 v0, 0x1

    .line 221
    .end local v2           #proximityWhenIncall:Z
    .end local v3           #screenOnImmediately:Z
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 222
    if-eqz v1, :cond_5

    iget-boolean v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mBeginningCall:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_b

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v4, :cond_b

    .line 224
    :cond_5
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v4}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->release()V

    .line 229
    :cond_6
    :goto_3
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneGlobals;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 231
    iget-object v5, p0, Lcom/android/phone/MiuiPhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5

    .line 232
    if-eqz v0, :cond_d

    .line 233
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_c

    .line 234
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: acquiring..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 247
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_7
    return-void

    :cond_8
    move v3, v4

    .line 198
    goto :goto_0

    .restart local v3       #screenOnImmediately:Z
    :cond_9
    move v2, v4

    .line 200
    goto :goto_1

    .line 217
    .restart local v2       #proximityWhenIncall:Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 225
    .end local v2           #proximityWhenIncall:Z
    .end local v3           #screenOnImmediately:Z
    :cond_b
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_6

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v4, :cond_6

    .line 227
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v4}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->delayAquire()V

    goto :goto_3

    .line 237
    :cond_c
    :try_start_1
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: lock already held."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 247
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 240
    :cond_d
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 241
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: releasing..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_4

    .line 244
    :cond_e
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: lock already released."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method
