.class public abstract Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "MiuiIccPhoneBookInterfaceManager.java"


# static fields
.field static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field static final EVENT_GET_SIZE_DONE:I = 0x1

.field static final EVENT_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_DONE:I = 0x3


# instance fields
.field mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

.field mBaseHandler:Landroid/os/Handler;

.field mError:I

.field final mLock:Ljava/lang/Object;

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field mRecordSize:[I

.field mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 25
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 36
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccRecords;

    .line 37
    .local v0, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MiuiAdnRecordCache;

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    .line 41
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method private updateEfForIccType(I)I
    .locals 1
    .parameter "efid"

    .prologue
    .line 306
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isUsimPhoneBookRecords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/16 p1, 0x4f30

    .line 311
    .end local p1
    :cond_0
    return p1
.end method


# virtual methods
.method protected checkThread()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 194
    return-void
.end method

.method public getAdnCapacity()I
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    const/16 v1, 0x6f3a

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MiuiAdnRecordCache;->getAdnCapacity(I)I

    move-result v0

    return v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 274
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 275
    .local v1, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 276
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/MiuiAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/MiuiAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 278
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    return-object v2

    .line 278
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .parameter "efid"

    .prologue
    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdnRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 174
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    .line 177
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 178
    .local v2, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 180
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 182
    .local v0, fh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 184
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 186
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    return-object v3

    .line 186
    .end local v0           #fh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v1           #response:Landroid/os/Message;
    .end local v2           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getFreeAdn()I
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    const/16 v1, 0x6f3a

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MiuiAdnRecordCache;->getFreeAdn(I)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I

    return v0
.end method

.method public isPhoneBookReady()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsimPhoneBookRecords()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/UiccCardApplication;

    .line 154
    .local v0, app:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected publish()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 250
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 253
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 254
    .local v6, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 255
    .local v5, response:Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v2, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    move v1, p1

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MiuiAdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 257
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 258
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 258
    .end local v2           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 226
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 229
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 230
    .local v6, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 231
    .local v5, response:Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v2, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v3, p4, p5}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v3, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    move v1, p1

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MiuiAdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 234
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 235
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 235
    .end local v2           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v3           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateIccRecords(Lcom/android/internal/telephony/IccRecords;)V
    .locals 1
    .parameter "iccRecords"

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiAdnRecordCache;

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    goto :goto_0
.end method

.method public updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/AdnRecord;I)Z
    .locals 8
    .parameter "efid"
    .parameter "adn"
    .parameter "index"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 107
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 110
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 111
    .local v6, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 112
    .local v5, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MiuiAdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 113
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 114
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 114
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 8
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 126
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 129
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 130
    .local v6, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 131
    .local v5, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/MiuiAdnRecordCache;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MiuiAdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 132
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 133
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 133
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateUsimPhoneBookRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmails"
    .parameter "newAnr"
    .parameter "index"

    .prologue
    .line 139
    new-instance v0, Lcom/android/internal/telephony/MiuiAdnRecord;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/AdnRecord;I)Z

    move-result v0

    return v0
.end method

.method public updateUsimPhoneBookRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmails"
    .parameter "newAnr"

    .prologue
    .line 144
    new-instance v0, Lcom/android/internal/telephony/MiuiAdnRecord;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/MiuiAdnRecord;

    invoke-direct {v1, p4, p5, p6, p7}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v0

    return v0
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 295
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by search"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
