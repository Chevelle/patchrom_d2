.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 753
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v14}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v14

    const-string v15, "volume"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "list"

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v14

    const/16 v15, 0x6e

    invoke-static {v14, v15}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v11

    .line 756
    .local v11, vols:[Ljava/lang/String;
    move-object v1, v11

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v12, v1, v3

    .line 757
    .local v12, volstr:Ljava/lang/String;
    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 759
    .local v9, tok:[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v5, v9, v14

    .line 760
    .local v5, path:Ljava/lang/String;
    const-string v8, "removed"

    .line 761
    .local v8, state:Ljava/lang/String;
    const/4 v14, 0x3

    aget-object v10, v9, v14

    .line 764
    .local v10, uuid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 766
    .local v13, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    const/4 v14, 0x2

    :try_start_2
    aget-object v14, v9, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 769
    .local v7, st:I
    if-nez v7, :cond_2

    .line 770
    const-string v8, "removed"

    .line 783
    :goto_1
    if-eqz v8, :cond_0

    .line 785
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v14, v13, v8}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 786
    const-string v14, "-"

    if-eq v10, v14, :cond_0

    .line 787
    invoke-virtual {v13, v10}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 756
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 766
    .end local v7           #st:I
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v14

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 791
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #path:Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #tok:[Ljava/lang/String;
    .end local v10           #uuid:Ljava/lang/String;
    .end local v11           #vols:[Ljava/lang/String;
    .end local v12           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 792
    .local v2, e:Ljava/lang/Exception;
    const-string v14, "MountService"

    const-string v15, "Error processing initial volume state"

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    invoke-static {v14}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 794
    .local v6, primary:Landroid/os/storage/StorageVolume;
    if-eqz v6, :cond_1

    .line 795
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v15, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v14, v6, v15}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 803
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #primary:Landroid/os/storage/StorageVolume;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v14}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 806
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v14}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v14}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 810
    return-void

    .line 771
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #st:I
    .restart local v8       #state:Ljava/lang/String;
    .restart local v9       #tok:[Ljava/lang/String;
    .restart local v10       #uuid:Ljava/lang/String;
    .restart local v11       #vols:[Ljava/lang/String;
    .restart local v12       #volstr:Ljava/lang/String;
    .restart local v13       #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    const/4 v14, 0x1

    if-ne v7, v14, :cond_3

    .line 772
    :try_start_5
    const-string v8, "unmounted"

    goto :goto_1

    .line 773
    :cond_3
    const/4 v14, 0x4

    if-ne v7, v14, :cond_4

    .line 774
    const-string v8, "mounted"

    .line 775
    const-string v14, "MountService"

    const-string v15, "Media already mounted on daemon connection"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 776
    :cond_4
    const/4 v14, 0x7

    if-ne v7, v14, :cond_5

    .line 777
    const-string v8, "shared"

    .line 778
    const-string v14, "MountService"

    const-string v15, "Media shared on daemon connection"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 780
    :cond_5
    new-instance v14, Ljava/lang/Exception;

    const-string v15, "Unexpected state %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method
