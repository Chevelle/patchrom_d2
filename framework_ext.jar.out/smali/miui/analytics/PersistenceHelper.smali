.class Lmiui/analytics/PersistenceHelper;
.super Ljava/lang/Object;
.source "PersistenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/analytics/PersistenceHelper$1;,
        Lmiui/analytics/PersistenceHelper$RunThread;,
        Lmiui/analytics/PersistenceHelper$Mode;
    }
.end annotation


# static fields
.field private static final MSG_CLOSE:I = 0x3

.field private static final MSG_OPEN:I = 0x1

.field private static final MSG_WRITE_EVENT:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableWrite:Z

.field private mEventBuilder:Lmiui/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/analytics/ObjectBuilder",
            "<",
            "Lmiui/analytics/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Lmiui/analytics/PersistenceHelper$Mode;

.field private mStore:Lmiui/analytics/Storable;

.field private mStoreBuilder:Lmiui/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/analytics/ObjectBuilder",
            "<",
            "Lmiui/analytics/Storable;",
            ">;"
        }
    .end annotation
.end field

.field private mSynchronized:Ljava/lang/Object;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/analytics/PersistenceHelper;->mEnableWrite:Z

    .line 27
    sget-object v0, Lmiui/analytics/PersistenceHelper$Mode;->READ_WRITE:Lmiui/analytics/PersistenceHelper$Mode;

    iput-object v0, p0, Lmiui/analytics/PersistenceHelper;->mMode:Lmiui/analytics/PersistenceHelper$Mode;

    .line 30
    new-instance v0, Lmiui/analytics/ObjectBuilder;

    invoke-direct {v0}, Lmiui/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lmiui/analytics/PersistenceHelper;->mStoreBuilder:Lmiui/analytics/ObjectBuilder;

    .line 31
    new-instance v0, Lmiui/analytics/ObjectBuilder;

    invoke-direct {v0}, Lmiui/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lmiui/analytics/PersistenceHelper;->mEventBuilder:Lmiui/analytics/ObjectBuilder;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/analytics/PersistenceHelper;->mSynchronized:Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mEventBuilder:Lmiui/analytics/ObjectBuilder;

    const-class v1, Lmiui/analytics/TrackEvent;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lmiui/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 38
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mEventBuilder:Lmiui/analytics/ObjectBuilder;

    const-class v1, Lmiui/analytics/LogEvent;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lmiui/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 39
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mEventBuilder:Lmiui/analytics/ObjectBuilder;

    const-class v1, Lmiui/analytics/TrackPageViewEvent;

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lmiui/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 42
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mStoreBuilder:Lmiui/analytics/ObjectBuilder;

    const-class v1, Lmiui/analytics/SQLiteStore;

    const-string v2, "ANALYTICS.SQLITESTORE"

    invoke-virtual {v0, v1, v2}, Lmiui/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 43
    return-void
.end method

.method static synthetic access$000(Lmiui/analytics/PersistenceHelper;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mSynchronized:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/analytics/PersistenceHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/analytics/PersistenceHelper;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lmiui/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/analytics/PersistenceHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/analytics/PersistenceHelper;->writeOpenImp()V

    return-void
.end method

.method static synthetic access$300(Lmiui/analytics/PersistenceHelper;Lmiui/analytics/Event;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lmiui/analytics/PersistenceHelper;->writeEventImp(Lmiui/analytics/Event;)V

    return-void
.end method

.method static synthetic access$400(Lmiui/analytics/PersistenceHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/analytics/PersistenceHelper;->closeImp()V

    return-void
.end method

.method private closeImp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    invoke-interface {v0}, Lmiui/analytics/Storable;->close()V

    .line 141
    iput-object v1, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    .line 144
    :cond_0
    iput-object v1, p0, Lmiui/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    .line 145
    return-void
.end method

.method private createStore(Ljava/lang/String;)V
    .locals 2
    .parameter "databaseName"

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mStoreBuilder:Lmiui/analytics/ObjectBuilder;

    const-string v1, "ANALYTICS.SQLITESTORE"

    invoke-virtual {v0, v1}, Lmiui/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/analytics/Storable;

    iput-object v0, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    .line 55
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    iget-object v1, p0, Lmiui/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lmiui/analytics/Storable;->create(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private deletePreDatabase(Ljava/lang/String;)V
    .locals 7
    .parameter "databaseName"

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lmiui/analytics/EventUtils;->getDay(J)I

    move-result v3

    int-to-long v0, v3

    .line 120
    .local v0, days:J
    iget-object v3, p0, Lmiui/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 121
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Lmiui/analytics/EventUtils;->getDay(J)I

    move-result v3

    int-to-long v3, v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 123
    iget-object v3, p0, Lmiui/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lmiui/analytics/EventUtils;->deleteDatabaseFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method private writeEventImp(Lmiui/analytics/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 162
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/analytics/PersistenceHelper$Mode;->READ_WRITE:Lmiui/analytics/PersistenceHelper$Mode;

    iget-object v1, p0, Lmiui/analytics/PersistenceHelper;->mMode:Lmiui/analytics/PersistenceHelper$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lmiui/analytics/PersistenceHelper;->mEnableWrite:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    invoke-virtual {p1, v0}, Lmiui/analytics/Event;->writeEvent(Lmiui/analytics/Storable;)V

    .line 165
    :cond_0
    return-void
.end method

.method private writeOpenImp()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lmiui/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/analytics/PersistenceHelper;->mEnableWrite:Z

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lmiui/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/analytics/EventUtils;->getDatabaseName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, databaseName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lmiui/analytics/PersistenceHelper;->deletePreDatabase(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v0}, Lmiui/analytics/PersistenceHelper;->createStore(Ljava/lang/String;)V

    .line 116
    .end local v0           #databaseName:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lmiui/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 131
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 132
    iget-object v1, p0, Lmiui/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lmiui/analytics/PersistenceHelper;->closeImp()V

    goto :goto_0
.end method

.method public readEvents(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lmiui/analytics/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    .local p2, itemsReg:Ljava/util/Map;,"Ljava/util/Map<Ljava/util/regex/Pattern;Ljava/lang/String;>;"
    iget-object v7, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    if-eqz v7, :cond_3

    .line 183
    iget-object v7, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    invoke-interface {v7, p1}, Lmiui/analytics/Storable;->readDataset(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 184
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v4, listEvent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/analytics/Event;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 188
    const-string v7, "type"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 189
    .local v6, type:I
    iget-object v7, p0, Lmiui/analytics/PersistenceHelper;->mEventBuilder:Lmiui/analytics/ObjectBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/analytics/Event;

    .line 191
    .local v1, event:Lmiui/analytics/Event;
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1, v0}, Lmiui/analytics/Event;->restore(Landroid/database/Cursor;)V

    .line 193
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/regex/Pattern;

    .line 194
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1}, Lmiui/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 195
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lmiui/analytics/Event;->setPolicy(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v1           #event:Lmiui/analytics/Event;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #pattern:Ljava/util/regex/Pattern;
    .end local v6           #type:I
    :catch_0
    move-exception v2

    .line 203
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 206
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 211
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v4           #listEvent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/analytics/Event;>;"
    :goto_1
    return-object v4

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1
.end method

.method public readOpen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "databaseName"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    .line 47
    sget-object v0, Lmiui/analytics/PersistenceHelper$Mode;->READ_ONLY:Lmiui/analytics/PersistenceHelper$Mode;

    iput-object v0, p0, Lmiui/analytics/PersistenceHelper;->mMode:Lmiui/analytics/PersistenceHelper$Mode;

    .line 49
    invoke-direct {p0, p2}, Lmiui/analytics/PersistenceHelper;->createStore(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public selectStore(Ljava/lang/String;)Z
    .locals 3
    .parameter "tag"

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, ret:Z
    iget-object v2, p0, Lmiui/analytics/PersistenceHelper;->mStoreBuilder:Lmiui/analytics/ObjectBuilder;

    invoke-virtual {v2, p1}, Lmiui/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/analytics/Storable;

    .line 151
    .local v1, store:Lmiui/analytics/Storable;
    if-eqz v1, :cond_1

    .line 152
    iget-object v2, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    invoke-interface {v2}, Lmiui/analytics/Storable;->close()V

    .line 154
    :cond_0
    iput-object v1, p0, Lmiui/analytics/PersistenceHelper;->mStore:Lmiui/analytics/Storable;

    .line 155
    const/4 v0, 0x1

    .line 158
    :cond_1
    return v0
.end method

.method public writeEvent(Ljava/lang/String;J)V
    .locals 2
    .parameter "id"
    .parameter "value"

    .prologue
    .line 168
    new-instance v0, Lmiui/analytics/TrackEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lmiui/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/util/Map;J)V

    invoke-virtual {p0, v0}, Lmiui/analytics/PersistenceHelper;->writeEvent(Lmiui/analytics/Event;)V

    .line 169
    return-void
.end method

.method public writeEvent(Lmiui/analytics/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 172
    iget-object v1, p0, Lmiui/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 174
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 175
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    invoke-virtual {p1}, Lmiui/analytics/Event;->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lmiui/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public writeOpen(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lmiui/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    .line 95
    sget-object v1, Lmiui/analytics/PersistenceHelper$Mode;->READ_WRITE:Lmiui/analytics/PersistenceHelper$Mode;

    iput-object v1, p0, Lmiui/analytics/PersistenceHelper;->mMode:Lmiui/analytics/PersistenceHelper$Mode;

    .line 97
    iget-object v2, p0, Lmiui/analytics/PersistenceHelper;->mSynchronized:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_0
    new-instance v1, Lmiui/analytics/PersistenceHelper$RunThread;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lmiui/analytics/PersistenceHelper$RunThread;-><init>(Lmiui/analytics/PersistenceHelper;Lmiui/analytics/PersistenceHelper$1;)V

    invoke-virtual {v1}, Lmiui/analytics/PersistenceHelper$RunThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    iget-object v1, p0, Lmiui/analytics/PersistenceHelper;->mSynchronized:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 106
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 107
    iget-object v1, p0, Lmiui/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    return-void

    .line 103
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 101
    :catch_0
    move-exception v1

    goto :goto_0
.end method
