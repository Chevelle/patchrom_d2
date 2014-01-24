.class public Lmiui/provider/yellowpage/utils/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/yellowpage/utils/Contact$1;,
        Lmiui/provider/yellowpage/utils/Contact$SmsSendBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Contact"

.field private static sSmsHashMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiui/provider/yellowpage/utils/Contact;->sSmsHashMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static directlySendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)Z
    .locals 14
    .parameter "context"
    .parameter "phone"
    .parameter "message"
    .parameter "sentIntent"
    .parameter "simIndex"

    .prologue
    .line 57
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Contact;->isPrivacyModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const v2, 0x60c0266

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 60
    const/4 v2, 0x0

    .line 78
    :goto_0
    return v2

    .line 61
    :cond_0
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Contact;->isInAirPlaneMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move/from16 v0, p4

    invoke-static {p0, v0}, Lmiui/provider/yellowpage/utils/Sim;->isSimCardReady(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    :cond_1
    const v2, 0x60c0262

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 64
    const/4 v2, 0x0

    goto :goto_0

    .line 68
    :cond_2
    const/4 v2, -0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_4

    .line 69
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 70
    .local v1, smsManager:Landroid/telephony/SmsManager;
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 71
    .local v12, dividedMessages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    .local v4, text:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 74
    .end local v4           #text:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 76
    .end local v1           #smsManager:Landroid/telephony/SmsManager;
    .end local v12           #dividedMessages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-static {p0}, Lmiui/msim/telephony/MiuiSmsManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiSmsManager;

    move-result-object v1

    .line 77
    .local v1, smsManager:Lmiui/msim/telephony/IMiuiSmsManager;
    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v5, v1

    move/from16 v6, p4

    move-object v7, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-interface/range {v5 .. v11}, Lmiui/msim/telephony/IMiuiSmsManager;->sendTextMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 78
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getOperatorNumeric(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 157
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 159
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSmsHash(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "message"
    .parameter "phone"

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const-string p0, ""

    .line 115
    :cond_0
    if-nez p1, :cond_1

    .line 116
    const-string p1, ""

    .line 118
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getSmsSendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "message"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 123
    new-instance v0, Lmiui/provider/yellowpage/utils/Contact$SmsSendBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/provider/yellowpage/utils/Contact$SmsSendBroadcastReceiver;-><init>(Lmiui/provider/yellowpage/utils/Contact$1;)V

    .line 124
    .local v0, smsSendBroadcastReceiver:Lmiui/provider/yellowpage/utils/Contact$SmsSendBroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.miui.yellowppage.send_sms"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.yellowppage.send_sms"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static isInAirPlaneMode(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 86
    .local v0, airPlaneModeOn:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 90
    .end local v0           #airPlaneModeOn:I
    :cond_0
    :goto_0
    return v2

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPrivacyModeEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, helper:Lmiui/security/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v1

    return v1
.end method

.method public static messageIsSending(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "message"
    .parameter "phone"

    .prologue
    .line 107
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/utils/Contact;->getSmsHash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, hash:I
    sget-object v1, Lmiui/provider/yellowpage/utils/Contact;->sSmsHashMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static putInSendingSet(I)V
    .locals 3
    .parameter "hash"

    .prologue
    .line 103
    sget-object v0, Lmiui/provider/yellowpage/utils/Contact;->sSmsHashMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method private static removeFromSendingSet(I)V
    .locals 2
    .parameter "hash"

    .prologue
    .line 99
    sget-object v0, Lmiui/provider/yellowpage/utils/Contact;->sSmsHashMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public static sendSms(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 34
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Contact;->isPrivacyModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    const v3, 0x60c0266

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, message:Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, phone:Ljava/lang/String;
    invoke-static {v1, v2}, Lmiui/provider/yellowpage/utils/Contact;->messageIsSending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    const-string v3, "Contact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send sms to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {v1, v2}, Lmiui/provider/yellowpage/utils/Contact;->getSmsHash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, hash:I
    invoke-static {v0}, Lmiui/provider/yellowpage/utils/Contact;->putInSendingSet(I)V

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lmiui/provider/yellowpage/utils/Contact;->getSmsSendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {p0, v2, v1, v3, v4}, Lmiui/provider/yellowpage/utils/Contact;->directlySendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    const v3, 0x60c0265

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 50
    :cond_2
    invoke-static {v0}, Lmiui/provider/yellowpage/utils/Contact;->removeFromSendingSet(I)V

    goto :goto_0
.end method
