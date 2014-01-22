.class Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothMnsEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsEmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailContentObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailContentObserver"

.field private static final THRESHOLD:I = 0xbb8

.field private static final UPDATE:I


# instance fields
.field private mDeletedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailAddedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailBoxList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailDeletedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsEmail;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailBoxList:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailList:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mDeletedList:Ljava/util/HashMap;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailAddedList:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailDeletedList:Ljava/util/HashMap;

    .line 169
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mHandler:Landroid/os/Handler;

    .line 158
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->sendEvents()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 275
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 277
    return-void
.end method

.method private deletedEmail()V
    .locals 9

    .prologue
    .line 304
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsEmail;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EmailContentObserver"

    const-string v4, "deletedEmail()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    if-eqz v3, :cond_2

    .line 306
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 307
    .local v2, values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;

    .line 308
    .local v0, email:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsEmail;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "EmailContentObserver"

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget v4, v4, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mMasId:I

    iget-wide v5, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mId:J

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget-wide v7, v7, Lcom/android/bluetooth/map/BluetoothMnsEmail;->OFFSET_START:J

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "telecom/msg/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mFolderName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "EMAIL"

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;->onMessageDeleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    .end local v0           #email:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;>;"
    :cond_2
    return-void
.end method

.method private isMapFolder(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 280
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 282
    :cond_0
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newEmail()V
    .locals 9

    .prologue
    .line 288
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsEmail;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EmailContentObserver"

    const-string v4, "newEmail()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    if-eqz v3, :cond_3

    .line 290
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 291
    .local v2, values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;

    .line 292
    .local v0, email:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsEmail;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "EmailContentObserver"

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget v4, v4, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mMasId:I

    iget-wide v5, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mId:J

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget-wide v7, v7, Lcom/android/bluetooth/map/BluetoothMnsEmail;->OFFSET_START:J

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "telecom/msg/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mFolderName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "EMAIL"

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;->onNewMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget v3, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget v4, v4, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mMasId:I

    iget-wide v5, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mId:J

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget-wide v7, v7, Lcom/android/bluetooth/map/BluetoothMnsEmail;->OFFSET_START:J

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "telecom/msg/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mFolderName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "EMAIL"

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;->onSendingSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    .end local v0           #email:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;>;"
    :cond_3
    return-void
.end method

.method private sendEvents()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->newEmail()V

    .line 263
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mDeletedList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 267
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->deletedEmail()V

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 270
    :cond_1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsEmail;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EmailContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 167
    return-void
.end method

.method update(Z)V
    .locals 18
    .parameter "init"

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->clear()V

    .line 212
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget-object v8, v8, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 213
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_MESSAGE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 215
    .local v11, crEmail:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 216
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 217
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailBoxList:Ljava/util/HashMap;

    .line 218
    .local v10, boxList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailList:Ljava/util/HashMap;

    .line 219
    .local v15, oldEmailList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v12, emailList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;>;"
    :cond_1
    const/4 v8, 0x2

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 222
    .local v5, accountKey:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    #getter for: Lcom/android/bluetooth/map/BluetoothMnsEmail;->mAccountKey:J
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMnsEmail;->access$200(Lcom/android/bluetooth/map/BluetoothMnsEmail;)J

    move-result-wide v16

    cmp-long v8, v5, v16

    if-eqz v8, :cond_5

    .line 253
    :cond_2
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 254
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailList:Ljava/util/HashMap;

    .line 256
    .end local v5           #accountKey:J
    .end local v10           #boxList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;>;"
    .end local v12           #emailList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;>;"
    .end local v15           #oldEmailList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;>;"
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_4
    return-void

    .line 225
    .restart local v5       #accountKey:J
    .restart local v10       #boxList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;>;"
    .restart local v12       #emailList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;>;"
    .restart local v15       #oldEmailList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;>;"
    :cond_5
    const/4 v8, 0x0

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 226
    .local v3, id:J
    const/4 v8, 0x1

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 227
    .local v13, mailboxKey:J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 228
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;

    .line 229
    .local v9, box:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;
    if-eqz v9, :cond_2

    .line 232
    iget v8, v9, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->isMapFolder(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsEmail;->access$300()[Ljava/lang/String;

    move-result-object v8

    iget v0, v9, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mType:I

    move/from16 v16, v0

    aget-object v7, v8, v16

    .line 234
    .local v7, folderName:Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;

    iget v8, v9, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mType:I

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;-><init>(JJLjava/lang/String;I)V

    .line 236
    .local v2, msg:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;
    iget v8, v9, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mType:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v8, v0, :cond_8

    .line 237
    if-eqz p1, :cond_7

    .line 238
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mDeletedList:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    .end local v2           #msg:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;
    .end local v7           #folderName:Ljava/lang/String;
    :cond_6
    iget-object v7, v9, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 239
    .restart local v2       #msg:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;
    .restart local v7       #folderName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mDeletedList:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 241
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 244
    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 247
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 251
    .end local v2           #msg:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;
    .end local v7           #folderName:Ljava/lang/String;
    .end local v9           #box:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;
    :cond_9
    const-string v8, "EmailContentObserver"

    const-string v16, "Mailbox is not updated"

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method updateEmailBox()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailBoxList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 190
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsEmail;

    iget-object v9, v9, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_BOX_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_BOX_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 192
    .local v8, crBox:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 195
    :cond_0
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 196
    .local v2, id:J
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, displayName:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 198
    .local v5, accountKey:J
    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 199
    .local v7, type:I
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;-><init>(JLjava/lang/String;JI)V

    .line 200
    .local v1, box:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->mEmailBoxList:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsEmail;->access$000()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "EmailContentObserver"

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 204
    .end local v1           #box:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;
    .end local v2           #id:J
    .end local v4           #displayName:Ljava/lang/String;
    .end local v5           #accountKey:J
    .end local v7           #type:I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_3
    return-void
.end method
