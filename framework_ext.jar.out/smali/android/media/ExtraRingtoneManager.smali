.class public Landroid/media/ExtraRingtoneManager;
.super Ljava/lang/Object;
.source "ExtraRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExtraRingtoneManager$RingtoneItem;
    }
.end annotation


# static fields
.field private static final ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri; = null

.field private static final TARGET_USER:Ljava/lang/String; = "root"

.field public static final TYPE_MUSIC:I = 0x20

.field public static final TYPE_SMS_DELIVERED_SOUND:I = 0x8

.field public static final TYPE_SMS_RECEIVED_SOUND:I = 0x10

.field private static sRingtoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/ExtraRingtoneManager$RingtoneItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    const-string v0, "file:///data/system/ringtones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    .line 44
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "elder-ringtone.mp3"

    :goto_0
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    const-string v2, "ringtone"

    invoke-static {v3, v0, v1, v2}, Landroid/media/ExtraRingtoneManager;->addRingtoneItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x2

    const-string v1, "notification.mp3"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const-string v3, "notification_sound"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addRingtoneItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x4

    const-string v1, "alarm.mp3"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    const-string v3, "alarm_alert"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addRingtoneItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 49
    const/16 v0, 0x8

    const-string v1, "sms_delivered_sound.mp3"

    sget-object v2, Lmiui/provider/ExtraSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    const-string v3, "sms_delivered_sound"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addRingtoneItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 50
    const/16 v0, 0x10

    const-string v1, "sms_received_sound.mp3"

    sget-object v2, Lmiui/provider/ExtraSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    const-string v3, "sms_received_sound"

    invoke-static {v0, v1, v2, v3}, Landroid/media/ExtraRingtoneManager;->addRingtoneItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 51
    return-void

    .line 44
    :cond_0
    const-string v0, "ringtone.mp3"

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static addRingtoneItem(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "name"
    .parameter "defaultUri"
    .parameter "key"

    .prologue
    .line 185
    sget-object v2, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/media/ExtraRingtoneManager$RingtoneItem;

    invoke-direct {v0, p0, v1, p2, p3}, Landroid/media/ExtraRingtoneManager$RingtoneItem;-><init>(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 187
    .local v0, ringtoneItem:Landroid/media/ExtraRingtoneManager$RingtoneItem;
    sget-object v2, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public static copyRingtone(Ljava/lang/String;I)V
    .locals 3
    .parameter "path"
    .parameter "type"

    .prologue
    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v2, Landroid/media/ExtraRingtoneManager;->ACTUAL_DEFAULT_RINGTONE_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, dir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    invoke-static {v0}, Lmiui/os/Shell;->mkdirs(Ljava/lang/String;)Z

    .line 141
    :cond_1
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, ringtonePath:Ljava/lang/String;
    invoke-static {p0, v1}, Lmiui/os/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static getDefaultRingtoneUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "type"

    .prologue
    .line 65
    sget-object v2, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$RingtoneItem;

    .line 66
    .local v1, ringtoneItem:Landroid/media/ExtraRingtoneManager$RingtoneItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$RingtoneItem;->mRingtoneType:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, v1, Landroid/media/ExtraRingtoneManager$RingtoneItem;->mActualDefaultRingtoneUri:Landroid/net/Uri;

    .line 71
    .end local v1           #ringtoneItem:Landroid/media/ExtraRingtoneManager$RingtoneItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v2

    .line 180
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, uriString:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 169
    sget-object v2, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$RingtoneItem;

    .line 170
    .local v1, ringtoneItem:Landroid/media/ExtraRingtoneManager$RingtoneItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$RingtoneItem;->mRingtoneType:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, v1, Landroid/media/ExtraRingtoneManager$RingtoneItem;->mSettingType:Ljava/lang/String;

    .line 174
    .end local v1           #ringtoneItem:Landroid/media/ExtraRingtoneManager$RingtoneItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .parameter "soundUri"
    .parameter "ringtoneType"

    .prologue
    .line 150
    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 152
    .local v0, actualSoundUri:Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    move-object p0, v0

    .line 156
    .end local v0           #actualSoundUri:Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static isExtraCases(Landroid/net/Uri;)Z
    .locals 2
    .parameter "soundUri"

    .prologue
    .line 146
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static resolveDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "uri"

    .prologue
    .line 84
    if-nez p2, :cond_0

    move-object v1, p2

    .line 96
    :goto_0
    return-object v1

    .line 87
    :cond_0
    const-string v0, ""

    .line 88
    .local v0, path:Ljava/lang/String;
    const-string v1, "media"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    invoke-static {p0, p2}, Landroid/media/ExtraRingtoneManager;->resolveRingtonePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 95
    :cond_2
    :goto_1
    invoke-static {v0, p1}, Landroid/media/ExtraRingtoneManager;->copyRingtone(Ljava/lang/String;I)V

    move-object v1, p2

    .line 96
    goto :goto_0

    .line 92
    :cond_3
    const-string v1, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static resolveRingtonePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 107
    const/4 v8, 0x0

    .line 108
    .local v8, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 110
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, mediaProvider:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 120
    :cond_0
    if-eqz v6, :cond_1

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 124
    .end local v0           #mediaProvider:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-object v8

    .line 117
    :catch_0
    move-exception v7

    .line 118
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    if-eqz v6, :cond_1

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 120
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static setRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 160
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
