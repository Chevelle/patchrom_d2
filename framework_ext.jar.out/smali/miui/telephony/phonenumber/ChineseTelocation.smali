.class public Lmiui/telephony/phonenumber/ChineseTelocation;
.super Ljava/lang/Object;
.source "ChineseTelocation.java"


# static fields
.field private static final DATA_PATH:Ljava/lang/String; = "/etc/telocation.idf"

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "ChineseTelocation"

.field private static final UNIQUE_ID_NONE:I

.field private static sInstance:Lmiui/telephony/phonenumber/ChineseTelocation;


# instance fields
.field private mAllowTelocation:Z

.field private mAreaCodeTelocations:Ljava/util/HashMap;
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

.field private mContext:Landroid/content/Context;

.field private mCustomLocationObserver:Landroid/database/ContentObserver;

.field private mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

.field private mGroupCustomLocations:Ljava/util/HashMap;
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

.field private mNormalCustomLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lmiui/telephony/phonenumber/ChineseTelocation;

    invoke-direct {v0}, Lmiui/telephony/phonenumber/ChineseTelocation;-><init>()V

    sput-object v0, Lmiui/telephony/phonenumber/ChineseTelocation;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocation;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAreaCodeTelocations:Ljava/util/HashMap;

    .line 44
    :try_start_0
    new-instance v1, Lmiui/util/DensityIndexFile$Reader;

    const-string v2, "/etc/telocation.idf"

    invoke-direct {v1, v2}, Lmiui/util/DensityIndexFile$Reader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ChineseTelocation"

    const-string v2, "Can\'t read /etc/telocation.idf, NO mobile telocation supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/telephony/phonenumber/ChineseTelocation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    return-void
.end method

.method static synthetic access$100(Lmiui/telephony/phonenumber/ChineseTelocation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    return-void
.end method

.method private findCustomLocation(ILjava/lang/CharSequence;II)Ljava/lang/String;
    .locals 8
    .parameter "id"
    .parameter "cs"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 207
    const/4 v4, 0x0

    .line 209
    .local v4, location:Ljava/lang/String;
    if-lez p1, :cond_0

    .line 210
    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #location:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 213
    .restart local v4       #location:Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_4

    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 214
    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 215
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne p4, v6, :cond_1

    .line 219
    const/4 v5, 0x1

    .line 220
    .local v5, matched:Z
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 221
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, p3, v0

    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3

    .line 223
    const/4 v5, 0x0

    .line 227
    :cond_2
    if-eqz v5, :cond_1

    .line 228
    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #location:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #location:Ljava/lang/String;
    goto :goto_0

    .line 220
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #len:I
    .end local v5           #matched:Z
    :cond_4
    if-nez v4, :cond_5

    .line 233
    const-string v4, ""

    .line 235
    :cond_5
    return-object v4
.end method

.method public static getInstance()Lmiui/telephony/phonenumber/ChineseTelocation;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocation;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocation;

    return-object v0
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    .line 132
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 133
    iput-object p1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    .line 135
    :cond_0
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    .line 136
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    .line 138
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    .local v0, h:Landroid/os/Handler;
    new-instance v1, Lmiui/telephony/phonenumber/ChineseTelocation$1;

    invoke-direct {v1, p0, v0}, Lmiui/telephony/phonenumber/ChineseTelocation$1;-><init>(Lmiui/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    .line 147
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_telocation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    new-instance v1, Lmiui/telephony/phonenumber/ChineseTelocation$2;

    invoke-direct {v1, p0, v0}, Lmiui/telephony/phonenumber/ChineseTelocation$2;-><init>(Lmiui/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    .line 159
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    return-void
.end method

.method private updateCustomLocation()V
    .locals 12

    .prologue
    .line 80
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 82
    iget-boolean v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-eqz v0, :cond_5

    .line 83
    const/4 v6, 0x0

    .line 85
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "location"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    if-eqz v6, :cond_4

    .line 93
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 95
    .local v11, type:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, number:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, location:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    const/4 v10, 0x0

    .line 104
    .local v10, start:I
    const-string v0, "+86"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    const/4 v10, 0x3

    .line 109
    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v10

    const/4 v1, 0x1

    invoke-virtual {p0, v9, v10, v0, v1}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v7

    .line 110
    .local v7, id:I
    if-eqz v7, :cond_0

    .line 111
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    .end local v7           #id:I
    .end local v8           #location:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #start:I
    .end local v11           #type:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_2
    throw v0

    .line 106
    .restart local v8       #location:Ljava/lang/String;
    .restart local v9       #number:Ljava/lang/String;
    .restart local v10       #start:I
    .restart local v11       #type:I
    :cond_3
    :try_start_1
    const-string v0, "0086"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const/4 v10, 0x4

    goto :goto_1

    .line 115
    .end local v10           #start:I
    :pswitch_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v8           #location:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v11           #type:I
    :cond_4
    if-eqz v6, :cond_5

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 128
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    return-void

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTelocationSetting()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_telocation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    .line 76
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    .line 77
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    invoke-virtual {v0}, Lmiui/util/DensityIndexFile$Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    :cond_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 66
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAreaCode(Landroid/content/Context;Landroid/location/Address;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v7, 0x0

    .line 310
    if-nez p2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-object v7

    .line 314
    :cond_1
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAreaCodeTelocations:Ljava/util/HashMap;

    monitor-enter v8

    .line 315
    :try_start_0
    iget-object v9, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAreaCodeTelocations:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 316
    const/4 v3, 0x0

    .local v3, id:I
    :goto_1
    const/16 v9, 0x3e8

    if-ge v3, v9, :cond_3

    .line 317
    iget-object v9, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v3, v11}, Lmiui/util/DensityIndexFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 318
    .local v5, location:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 319
    iget-object v9, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAreaCodeTelocations:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 323
    .end local v3           #id:I
    .end local v5           #location:Ljava/lang/String;
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {p2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, adminArea:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, locality:Ljava/lang/String;
    const-string v8, "ChineseTelocation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adminArea:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " locality:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 330
    const-string v8, "\u7701"

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 331
    const-string v8, "\u5e02"

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v8, "\u5e02"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 333
    const-string v8, "\u533a"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 334
    const-string v8, "\u53bf"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 335
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAreaCodeTelocations:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 336
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 337
    .local v6, normalizedAddress:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    .line 323
    .end local v0           #adminArea:Ljava/lang/String;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #locality:Ljava/lang/String;
    .end local v6           #normalizedAddress:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getAreaCode(Landroid/content/Context;Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cs"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    .line 261
    invoke-virtual {p0, p2, p3, p4, v3}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 262
    .local v0, id:I
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lmiui/util/DensityIndexFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getExternalLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "countryCode"
    .parameter "number"
    .parameter "locale"

    .prologue
    .line 271
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    .line 276
    :cond_0
    iget-boolean v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-nez v0, :cond_1

    .line 277
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    .line 280
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 287
    :cond_2
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 288
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public getLocation(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cs"
    .parameter "start"
    .parameter "length"
    .parameter "withAreaCode"

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v2, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 240
    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    .line 244
    :cond_0
    iget-boolean v2, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-nez v2, :cond_2

    .line 245
    const/4 v1, 0x0

    .line 257
    :cond_1
    :goto_0
    return-object v1

    .line 248
    :cond_2
    const/4 v0, -0x1

    .line 249
    .local v0, id:I
    if-eqz p5, :cond_3

    .line 250
    const/4 v2, 0x1

    invoke-virtual {p0, p2, p3, p4, v2}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 253
    :cond_3
    invoke-direct {p0, v0, p2, p3, p4}, Lmiui/telephony/phonenumber/ChineseTelocation;->findCustomLocation(ILjava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, location:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    .line 255
    iget-object v2, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    invoke-virtual {v2, v3, v0, v3}, Lmiui/util/DensityIndexFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #location:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #location:Ljava/lang/String;
    goto :goto_0
.end method

.method getUniqId(Ljava/lang/CharSequence;IIZ)I
    .locals 7
    .parameter "cs"
    .parameter "start"
    .parameter "length"
    .parameter "enableMobile"

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    const/16 v6, 0x30

    .line 164
    if-lez p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 165
    add-int/lit8 p2, p2, 0x1

    .line 166
    add-int/lit8 p3, p3, -0x1

    .line 168
    :cond_0
    const/4 v3, 0x1

    if-gt p3, v3, :cond_2

    move v0, v1

    .line 203
    :cond_1
    :goto_0
    return v0

    .line 173
    :cond_2
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 197
    const/4 v2, 0x2

    if-le p3, v2, :cond_4

    .line 198
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 200
    .local v0, index:I
    goto :goto_0

    .line 177
    .end local v0           #index:I
    :pswitch_0
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_3

    move v0, v2

    .line 178
    goto :goto_0

    .line 179
    :cond_3
    if-eqz p4, :cond_4

    const/4 v3, 0x6

    if-le p3, v3, :cond_4

    .line 180
    const v3, 0xf4240

    add-int/lit8 v4, p2, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    const v5, 0x186a0

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit16 v4, v4, 0x2710

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x4

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x5

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x6

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int v0, v3, v4

    .line 184
    .restart local v0       #index:I
    const v3, 0x150ead

    if-ne v0, v3, :cond_1

    if-le p3, v2, :cond_1

    add-int/lit8 v2, p2, 0x7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p2, 0x8

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    add-int/lit8 v2, p2, 0x9

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    add-int/lit8 v2, p2, 0xa

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    move v0, v1

    .line 188
    goto/16 :goto_0

    .line 194
    .end local v0           #index:I
    :pswitch_1
    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/lit8 v0, v1, 0x14

    .line 195
    .restart local v0       #index:I
    goto/16 :goto_0

    .end local v0           #index:I
    :cond_4
    :pswitch_2
    move v0, v1

    .line 203
    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .parameter "cs"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0, p1, p2, p3, v3}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 267
    .local v0, id:I
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v0, v2}, Lmiui/util/DensityIndexFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
