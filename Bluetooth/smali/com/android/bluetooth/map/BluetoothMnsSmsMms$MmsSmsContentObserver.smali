.class Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothMnsSmsMms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsSmsMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmsSmsContentObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsSmsContentObserver"

.field private static final THRESHOLD:I = 0x5dc

.field private static final UPDATE:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMmsAddedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMmsDeletedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMmsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsAddedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsDeletedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsList:Ljava/util/HashMap;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsAddedList:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsDeletedList:Ljava/util/HashMap;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsList:Ljava/util/HashMap;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsAddedList:Ljava/util/HashMap;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsDeletedList:Ljava/util/HashMap;

    .line 156
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mHandler:Landroid/os/Handler;

    .line 145
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->sendEvents()V

    return-void
.end method

.method private clearMms()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 292
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsAddedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 293
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 294
    return-void
.end method

.method private clearSms()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 286
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsAddedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 287
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 288
    return-void
.end method

.method private deletedMms()V
    .locals 10

    .prologue
    .line 352
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MmsSmsContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deletedMms() MMS mas Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v6, v6, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    if-eqz v4, :cond_2

    .line 354
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsDeletedList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 355
    .local v3, values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;

    .line 356
    .local v2, msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    iget-wide v4, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mThreadId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const-string v0, "deleted"

    .line 357
    .local v0, folderName:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v5, v5, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    #getter for: Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->MMS_OFFSET_START:J
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$600(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mId:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "telecom/msg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MMS"

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;->onMessageDeleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .end local v0           #folderName:Ljava/lang/String;
    :cond_1
    iget-object v0, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mFolderName:Ljava/lang/String;

    goto :goto_1

    .line 361
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .end local v3           #values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_2
    return-void
.end method

.method private deletedSms()V
    .locals 12

    .prologue
    .line 321
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "MmsSmsContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deletedSms() SMS mas Id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v8, v8, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    if-eqz v6, :cond_3

    .line 323
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 324
    .local v3, phoneType:I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    const-string v4, "SMS_CDMA"

    .line 326
    .local v4, type:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsDeletedList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 327
    .local v5, values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;

    .line 328
    .local v2, msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    iget-wide v6, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mThreadId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    const-string v0, "deleted"

    .line 329
    .local v0, folderName:Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v7, v7, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    #getter for: Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->SMS_OFFSET_START:J
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$500(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mId:J

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "telecom/msg/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;->onMessageDeleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 324
    .end local v0           #folderName:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .end local v4           #type:Ljava/lang/String;
    .end local v5           #values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_1
    const-string v4, "SMS_GSM"

    goto :goto_0

    .line 328
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .restart local v4       #type:Ljava/lang/String;
    .restart local v5       #values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_2
    iget-object v0, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mFolderName:Ljava/lang/String;

    goto :goto_2

    .line 333
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .end local v3           #phoneType:I
    .end local v4           #type:Ljava/lang/String;
    .end local v5           #values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_3
    return-void
.end method

.method private newMms()V
    .locals 10

    .prologue
    .line 336
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MmsSmsContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newMms() MMS mas Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v6, v6, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    if-eqz v4, :cond_3

    .line 338
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsAddedList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 339
    .local v3, values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;

    .line 340
    .local v2, msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    iget-wide v4, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mThreadId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const-string v0, "deleted"

    .line 341
    .local v0, folderName:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v5, v5, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    #getter for: Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->MMS_OFFSET_START:J
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$600(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mId:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "telecom/msg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MMS"

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;->onNewMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget v4, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 344
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v5, v5, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    #getter for: Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->SMS_OFFSET_START:J
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$500(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mId:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "telecom/msg/sent"

    const-string v8, "MMS"

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;->onSendingSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    .end local v0           #folderName:Ljava/lang/String;
    :cond_2
    iget-object v0, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mFolderName:Ljava/lang/String;

    goto :goto_1

    .line 349
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .end local v3           #values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_3
    return-void
.end method

.method private newSms()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 297
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "MmsSmsContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newSms() SMS mas Id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v8, v8, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    if-eqz v6, :cond_7

    .line 299
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 300
    .local v3, phoneType:I
    if-ne v3, v12, :cond_2

    const-string v4, "SMS_CDMA"

    .line 302
    .local v4, type:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsAddedList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 303
    .local v5, values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;

    .line 304
    .local v2, msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    iget v6, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mType:I

    if-ne v6, v12, :cond_3

    .line 305
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v7, v7, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    #getter for: Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->SMS_OFFSET_START:J
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$500(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mId:J

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "telecom/msg/sent"

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;->onSendingSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 300
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .end local v4           #type:Ljava/lang/String;
    .end local v5           #values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_2
    const-string v4, "SMS_GSM"

    goto :goto_0

    .line 307
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .restart local v4       #type:Ljava/lang/String;
    .restart local v5       #values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_3
    iget v6, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 308
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v7, v7, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    #getter for: Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->SMS_OFFSET_START:J
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$500(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mId:J

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "telecom/msg/outbox"

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;->onSendingFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 310
    :cond_4
    iget v6, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mType:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    iget v6, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 312
    :cond_5
    iget-wide v6, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mThreadId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    const-string v0, "deleted"

    .line 313
    .local v0, folderName:Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v7, v7, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    #getter for: Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->SMS_OFFSET_START:J
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$500(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mId:J

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "telecom/msg/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;->onNewMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 312
    .end local v0           #folderName:Ljava/lang/String;
    :cond_6
    iget-object v0, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mFolderName:Ljava/lang/String;

    goto :goto_2

    .line 318
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .end local v3           #phoneType:I
    .end local v4           #type:Ljava/lang/String;
    .end local v5           #values:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_7
    return-void
.end method

.method private sendEvents()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsAddedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->newSms()V

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsAddedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->deletedSms()V

    .line 272
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsAddedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->newMms()V

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsAddedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 279
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->deletedMms()V

    .line 280
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 282
    :cond_3
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MmsSmsContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") SMS mas Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    return-void
.end method

.method update(Z)V
    .locals 0
    .parameter "init"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->updateSms(Z)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->updateMms(Z)V

    .line 177
    return-void
.end method

.method updateMms(Z)V
    .locals 19
    .parameter "init"

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->clearMms()V

    .line 234
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 235
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$400()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 236
    .local v12, crMms:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 237
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsList:Ljava/util/HashMap;

    .line 239
    .local v15, oldMmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v14, newMmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_1
    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v4, v6

    .line 242
    .local v4, id:J
    const/4 v6, 0x1

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 243
    .local v7, boxType:I
    const/4 v6, 0x2

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 244
    .local v8, threadId:J
    const/4 v6, 0x3

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 245
    .local v13, msgType:I
    const/4 v6, 0x4

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 247
    .local v10, date:J
    const/16 v6, 0x82

    if-eq v13, v6, :cond_3

    const/16 v6, 0x86

    if-eq v13, v6, :cond_3

    .line 249
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$300()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-direct/range {v3 .. v11}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;-><init>(JLjava/lang/String;IJJ)V

    .line 251
    .local v3, msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;

    .line 253
    .local v16, oldMsg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    if-nez p1, :cond_3

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mDate:J

    move-wide/from16 v17, v0

    cmp-long v6, v17, v10

    if-eqz v6, :cond_3

    .line 254
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsAddedList:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .end local v3           #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .end local v16           #oldMsg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 258
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsList:Ljava/util/HashMap;

    .line 259
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mMmsDeletedList:Ljava/util/HashMap;

    .line 261
    .end local v4           #id:J
    .end local v7           #boxType:I
    .end local v8           #threadId:J
    .end local v10           #date:J
    .end local v13           #msgType:I
    .end local v14           #newMmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    .end local v15           #oldMmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_5
    return-void
.end method

.method updateSms(Z)V
    .locals 19
    .parameter "init"

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->clearSms()V

    .line 183
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 184
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$200()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 185
    .local v12, crSms:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 186
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsList:Ljava/util/HashMap;

    .line 188
    .local v15, oldSmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v13, newSmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_1
    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 191
    .local v4, id:J
    const/4 v6, 0x1

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 192
    .local v7, type:I
    const/4 v6, 0x2

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 193
    .local v8, threadId:J
    const/4 v6, 0x3

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 194
    .local v10, date:J
    if-lez v7, :cond_3

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$300()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v7, v6, :cond_3

    .line 195
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$300()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-direct/range {v3 .. v11}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;-><init>(JLjava/lang/String;IJJ)V

    .line 197
    .local v3, msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 199
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;

    .line 200
    .local v16, old_msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    iget v6, v3, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mType:I

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mType:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v6, v0, :cond_3

    .line 201
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$000()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "MmsSmsContentObserver"

    const-string v17, "MNS_SMS: Add to mSmsAddedList"

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsAddedList:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v3           #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .end local v16           #old_msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    :cond_3
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 214
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsList:Ljava/util/HashMap;

    .line 215
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsDeletedList:Ljava/util/HashMap;

    .line 226
    .end local v4           #id:J
    .end local v7           #type:I
    .end local v8           #threadId:J
    .end local v10           #date:J
    .end local v13           #newSmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    .end local v15           #oldSmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_4
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_5
    return-void

    .line 206
    .restart local v3       #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .restart local v4       #id:J
    .restart local v7       #type:I
    .restart local v8       #threadId:J
    .restart local v10       #date:J
    .restart local v13       #newSmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    .restart local v15       #oldSmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;

    .line 207
    .local v14, oldMsg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    if-nez p1, :cond_3

    if-eqz v14, :cond_7

    iget-wide v0, v14, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mDate:J

    move-wide/from16 v17, v0

    cmp-long v6, v17, v10

    if-eqz v6, :cond_3

    .line 208
    :cond_7
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$000()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "MmsSmsContentObserver"

    const-string v17, "MNS_SMS: Add to mSmsAddedList"

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsAddedList:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    .end local v3           #msg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .end local v4           #id:J
    .end local v7           #type:I
    .end local v8           #threadId:J
    .end local v10           #date:J
    .end local v13           #newSmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    .end local v14           #oldMsg:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    .end local v15           #oldSmsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 222
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$000()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "MmsSmsContentObserver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MNS_SMS: mSmsList Length: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsList:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->mSmsDeletedList:Ljava/util/HashMap;

    goto :goto_1
.end method
