.class public Lcom/android/bluetooth/map/BluetoothMnsPreference;
.super Ljava/lang/Object;
.source "BluetoothMnsPreference.java"


# static fields
.field public static final BLUETOOTHMNS_CHANNEL_PREFERENCE:Ljava/lang/String; = "btmns_channels"

.field public static final BLUETOOTHMNS_NAME_PREFERENCE:Ljava/lang/String; = "btmns_names"

#the value of this static final field might be set in the static constructor
.field private static final D:Z = false

.field private static INSTANCE:Lcom/android/bluetooth/map/BluetoothMnsPreference; = null

.field private static INSTANCE_LOCK:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothMnsPreference"

.field private static final V:Z


# instance fields
.field private mChannelPreference:Landroid/content/SharedPreferences;

.field private mChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mNamePreference:Landroid/content/SharedPreferences;

.field private mNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->D:Z

    .line 48
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->V:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannels:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mNames:Ljava/util/HashMap;

    return-void
.end method

.method private getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 2
    .parameter "remoteDevice"
    .parameter "uuid"

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/bluetooth/map/BluetoothMnsPreference;
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMnsPreference;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->INSTANCE:Lcom/android/bluetooth/map/BluetoothMnsPreference;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMnsPreference;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMnsPreference;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->INSTANCE:Lcom/android/bluetooth/map/BluetoothMnsPreference;

    .line 77
    :cond_0
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->INSTANCE:Lcom/android/bluetooth/map/BluetoothMnsPreference;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMnsPreference;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x0

    monitor-exit v1

    .line 80
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->INSTANCE:Lcom/android/bluetooth/map/BluetoothMnsPreference;

    monitor-exit v1

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 85
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return v2

    .line 87
    :cond_0
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mInitialized:Z

    .line 89
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mContext:Landroid/content/Context;

    const-string v1, "btmns_names"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mNamePreference:Landroid/content/SharedPreferences;

    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mContext:Landroid/content/Context;

    const-string v1, "btmns_channels"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mNamePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mNames:Ljava/util/HashMap;

    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannels:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "BluetoothMnsPreference"

    const-string v1, "Dumping Names:  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "BluetoothMnsPreference"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v0, "BluetoothMnsPreference"

    const-string v1, "Dumping Channels:  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v0, "BluetoothMnsPreference"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public getChannel(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 5
    .parameter "remoteDevice"
    .parameter "uuid"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMnsPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, key:Ljava/lang/String;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMnsPreference;->V:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothMnsPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChannel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 123
    .local v0, channel:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannels:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #channel:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 125
    .restart local v0       #channel:Ljava/lang/Integer;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMnsPreference;->V:Z

    if-eqz v2, :cond_1

    const-string v2, "BluetoothMnsPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChannel for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .parameter "remoteDevice"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF:FF:FF:00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v0, "localhost"

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 116
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeChannel(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .parameter "remoteDevice"
    .parameter "uuid"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMnsPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public setChannel(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5
    .parameter "remoteDevice"
    .parameter "uuid"
    .parameter "channel"

    .prologue
    .line 142
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMnsPreference;->V:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothMnsPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setchannel for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMnsPreference;->getChannel(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    if-eq p3, v2, :cond_1

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMnsPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 4
    .parameter "remoteDevice"
    .parameter "name"

    .prologue
    .line 132
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsPreference;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMnsPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setname for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMnsPreference;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mNamePreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method
