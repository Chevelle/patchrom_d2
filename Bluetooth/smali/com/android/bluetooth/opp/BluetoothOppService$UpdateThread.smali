.class Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 1
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 400
    const-string v0, "Bluetooth Share Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 401
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 405
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 407
    const/4 v12, 0x0

    .line 409
    .local v12, keepService:Z
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$400(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in BluetoothOppService"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 416
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$402(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 418
    if-nez v12, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$300(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopSelf()V

    .line 420
    monitor-exit v1

    .line 541
    :cond_1
    :goto_1
    return-void

    .line 422
    :cond_2
    monitor-exit v1

    goto :goto_1

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v3, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z
    invoke-static {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1302(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 425
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 429
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 433
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 435
    const/4 v7, 0x0

    .line 437
    .local v7, arrayPos:I
    const/4 v12, 0x0

    .line 438
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    .line 440
    .local v11, isAfterLast:Z
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 456
    .local v10, idColumn:I
    :goto_2
    if-eqz v11, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_14

    .line 457
    :cond_4
    if-eqz v11, :cond_6

    .line 464
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v2, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->deleteShare(I)V
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto :goto_2

    .line 469
    :cond_6
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 471
    .local v9, id:I
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v7, v0, :cond_a

    .line 472
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->insertShare(Landroid/database/Cursor;I)V
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 474
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 475
    const/4 v12, 0x1

    .line 477
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 478
    const/4 v12, 0x1

    .line 480
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 481
    const/4 v12, 0x1

    .line 484
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 485
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 486
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto :goto_2

    .line 488
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 490
    .local v6, arrayId:I
    if-ge v6, v9, :cond_c

    .line 493
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v2, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    .line 496
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->deleteShare(I)V
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto/16 :goto_2

    .line 497
    :cond_c
    if-ne v6, v9, :cond_10

    .line 500
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->userAccepted:Z
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v1

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->updateShare(Landroid/database/Cursor;IZ)V
    invoke-static {v0, v8, v7, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;IZ)V

    .line 501
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 502
    const/4 v12, 0x1

    .line 504
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 505
    const/4 v12, 0x1

    .line 507
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 508
    const/4 v12, 0x1

    .line 511
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 512
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 513
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto/16 :goto_2

    .line 518
    :cond_10
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->insertShare(Landroid/database/Cursor;I)V
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 520
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 521
    const/4 v12, 0x1

    .line 523
    :cond_11
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 524
    const/4 v12, 0x1

    .line 526
    :cond_12
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 527
    const/4 v12, 0x1

    .line 529
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 530
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 531
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto/16 :goto_2

    .line 537
    .end local v6           #arrayId:I
    .end local v9           #id:I
    :cond_14
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 539
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
