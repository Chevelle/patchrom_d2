.class public Lmiui/push/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# static fields
.field private static sInstance:Lmiui/push/ServiceClient;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private createServiceIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 283
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v2, "com.xiaomi.xmsf"

    const-string v3, "com.xiaomi.xmsf.push.service.XMPushService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, pkgName:Ljava/lang/String;
    sget-object v2, Lmiui/push/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lmiui/push/ServiceClient;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    sget-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lmiui/push/ServiceClient;

    invoke-direct {v0, p0}, Lmiui/push/ServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    .line 27
    :cond_0
    sget-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    return-object v0
.end method

.method private hasNetwork()Z
    .locals 5

    .prologue
    .line 255
    const/4 v2, -0x1

    .line 256
    .local v2, type:I
    iget-object v3, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 258
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 260
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 264
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    if-ltz v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private serviceInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v4, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 270
    .local v1, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.xiaomi.xmsf"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 272
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_0

    .line 278
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 278
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public batchSendMessage([Lmiui/push/Message;)Z
    .locals 5
    .parameter "messages"

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v3

    .line 124
    :cond_1
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v1

    .line 125
    .local v1, intent:Landroid/content/Intent;
    array-length v4, p1

    new-array v2, v4, [Landroid/os/Bundle;

    .line 126
    .local v2, messageBundles:[Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 127
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lmiui/push/Message;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_2
    array-length v4, v2

    if-lez v4, :cond_0

    .line 131
    sget-object v3, Lmiui/push/PushConstants;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v3, "ext_packets"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 134
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public closeChannel()Z
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    const/4 v1, 0x0

    .line 189
    :goto_0
    return v1

    .line 186
    :cond_0
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 189
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public closeChannel(Ljava/lang/String;)Z
    .locals 2
    .parameter "chid"

    .prologue
    .line 198
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    const/4 v1, 0x0

    .line 205
    :goto_0
    return v1

    .line 201
    :cond_0
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 205
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public closeChannel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "chid"
    .parameter "userId"

    .prologue
    .line 215
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    const/4 v1, 0x0

    .line 223
    :goto_0
    return v1

    .line 218
    :cond_0
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 219
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 223
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public forceReconnection()Z
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    :cond_0
    const/4 v1, 0x0

    .line 238
    :goto_0
    return v1

    .line 235
    :cond_1
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 236
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 238
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public openChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)I
    .locals 7
    .parameter "userId"
    .parameter "chid"
    .parameter "token"
    .parameter "authMethod"
    .parameter "security"
    .parameter "kick"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 49
    .local p7, clientExtras:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p8, cloudExtras:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    const/4 v5, 0x1

    .line 91
    :goto_0
    return v5

    .line 53
    :cond_0
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v3

    .line 54
    .local v3, intent:Landroid/content/Intent;
    sget-object v5, Lmiui/push/PushConstants;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {v3, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {v3, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    invoke-virtual {v3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_KICK:Ljava/lang/String;

    invoke-virtual {v3, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    if-eqz p7, :cond_3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 64
    .local v1, i:I
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 65
    .local v4, pair:Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 67
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    .end local v4           #pair:Lorg/apache/http/NameValuePair;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 72
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz p8, :cond_6

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 79
    .restart local v1       #i:I
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 80
    .restart local v4       #pair:Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 82
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    .end local v4           #pair:Lorg/apache/http/NameValuePair;
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 87
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public resetConnection()V
    .locals 2

    .prologue
    .line 246
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 250
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public sendIQ(Lmiui/push/IQ;)Z
    .locals 4
    .parameter "iq"

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 148
    :cond_1
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lmiui/push/IQ;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 150
    .local v1, iqBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 151
    sget-object v2, Lmiui/push/PushConstants;->ACTION_SEND_IQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v2, "ext_packet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sendMessage(Lmiui/push/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v2

    .line 103
    :cond_1
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lmiui/push/Message;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 105
    .local v1, messageBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 106
    sget-object v2, Lmiui/push/PushConstants;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v2, "ext_packet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sendPresence(Lmiui/push/Presence;)Z
    .locals 4
    .parameter "presence"

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v2

    .line 168
    :cond_1
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 169
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lmiui/push/Presence;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 170
    .local v1, presBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 171
    sget-object v2, Lmiui/push/PushConstants;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "ext_packet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 174
    const/4 v2, 0x1

    goto :goto_0
.end method
