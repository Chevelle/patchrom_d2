.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingMove(Lcom/android/server/pm/PackageManagerService$MoveParams;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$currentStatus:I

.field final synthetic val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$MoveParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12220
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 12223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$16;->val$currentStatus:I

    move/from16 v20, v0

    .line 12225
    .local v20, returnCode:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$currentStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 12226
    const/4 v5, 0x0

    .line 12227
    .local v5, uidArr:[I
    const/4 v4, 0x0

    .line 12228
    .local v4, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 12229
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Package;

    .line 12230
    .local v17, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v17, :cond_6

    .line 12231
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " doesn\'t exist. Aborting move"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12233
    const/16 v20, -0x2

    .line 12247
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12248
    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_1

    .line 12250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    #calls: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 12252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 12253
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 12254
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    check-cast v17, Landroid/content/pm/PackageParser$Package;

    .line 12256
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v17, :cond_8

    .line 12257
    const-string v1, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " Package "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " doesn\'t exist. Aborting move"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12259
    const/16 v20, -0x2

    .line 12325
    :cond_0
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12326
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 12328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    #calls: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 12331
    .end local v4           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #uidArr:[I
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, v20

    if-eq v0, v1, :cond_f

    .line 12333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v1, :cond_2

    .line 12334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/16 v2, -0x6e

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 12348
    :cond_2
    :goto_2
    const/4 v1, -0x7

    move/from16 v0, v20

    if-eq v0, v1, :cond_4

    .line 12349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 12350
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Package;

    .line 12351
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_3

    .line 12352
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    .line 12354
    :cond_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 12357
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    .line 12358
    .local v15, observer:Landroid/content/pm/IPackageMoveObserver;
    if-eqz v15, :cond_5

    .line 12360
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move/from16 v0, v20

    invoke-interface {v15, v1, v0}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 12365
    :cond_5
    :goto_3
    return-void

    .line 12234
    .end local v15           #observer:Landroid/content/pm/IPackageMoveObserver;
    .restart local v4       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #uidArr:[I
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 12235
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " code path changed from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " Aborting move and returning error"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12239
    const/16 v20, -0x6

    goto/16 :goto_0

    .line 12241
    :cond_7
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v21, v0

    const/4 v1, 0x0

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v3, v21, v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 12244
    .end local v5           #uidArr:[I
    .local v21, uidArr:[I
    :try_start_7
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 12245
    .end local v4           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object/from16 v4, v18

    .end local v18           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v5, v21

    .end local v21           #uidArr:[I
    .restart local v5       #uidArr:[I
    goto/16 :goto_0

    .line 12247
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    :goto_4
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1

    .line 12260
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 12262
    const-string v1, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Package "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " code path changed from "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " to "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " Aborting move and returning error"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12266
    const/16 v20, -0x6

    goto/16 :goto_1

    .line 12268
    :cond_9
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 12269
    .local v16, oldCodePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v11

    .line 12270
    .local v11, newCodePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v14

    .line 12271
    .local v14, newResPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v13

    .line 12274
    .local v13, newNativePath:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12276
    .local v12, newNativeDir:Ljava/io/File;
    #calls: Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerService;->access$500(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-nez v1, :cond_a

    #calls: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerService;->access$600(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 12277
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v12}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesIfNeededLI(Ljava/io/File;Ljava/io/File;)I

    .line 12280
    :cond_a
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v23

    .line 12281
    .local v23, users:[I
    move-object/from16 v7, v23

    .local v7, arr$:[I
    array-length v10, v7

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_5
    if-ge v9, v10, :cond_c

    aget v22, v7, v9

    .line 12282
    .local v22, user:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, v22

    invoke-virtual {v1, v6, v13, v0}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_b

    .line 12284
    const/16 v20, -0x1

    .line 12281
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 12288
    .end local v22           #user:I
    :cond_c
    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_d

    .line 12289
    move-object/from16 v0, v17

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 12291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v17

    #calls: Lcom/android/server/pm/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_d

    .line 12294
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 12295
    const/16 v20, -0x1

    .line 12299
    :cond_d
    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_0

    .line 12300
    move-object/from16 v0, v17

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 12301
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v11, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 12302
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v14, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 12303
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v13, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 12304
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/pm/PackageSetting;

    .line 12305
    .local v19, ps:Lcom/android/server/pm/PackageSetting;
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 12306
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 12307
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 12309
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 12310
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    .line 12313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_e

    .line 12314
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v24, 0x4

    or-int v6, v6, v24

    iput v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 12318
    :goto_6
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setFlags(I)V

    .line 12319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    goto/16 :goto_1

    .line 12325
    .end local v7           #arr$:[I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #newCodePath:Ljava/lang/String;
    .end local v12           #newNativeDir:Ljava/io/File;
    .end local v13           #newNativePath:Ljava/lang/String;
    .end local v14           #newResPath:Ljava/lang/String;
    .end local v16           #oldCodePath:Ljava/lang/String;
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v23           #users:[I
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v1

    .line 12326
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1

    .line 12316
    .restart local v7       #arr$:[I
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #newCodePath:Ljava/lang/String;
    .restart local v12       #newNativeDir:Ljava/io/File;
    .restart local v13       #newNativePath:Ljava/lang/String;
    .restart local v14       #newResPath:Ljava/lang/String;
    .restart local v16       #oldCodePath:Ljava/lang/String;
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v19       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v23       #users:[I
    :cond_e
    :try_start_c
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v24, -0x40001

    and-int v6, v6, v24

    iput v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    .line 12339
    .end local v4           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #uidArr:[I
    .end local v7           #arr$:[I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #newCodePath:Ljava/lang/String;
    .end local v12           #newNativeDir:Ljava/io/File;
    .end local v13           #newNativePath:Ljava/lang/String;
    .end local v14           #newResPath:Ljava/lang/String;
    .end local v16           #oldCodePath:Ljava/lang/String;
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v23           #users:[I
    :cond_f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 12341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 12342
    :try_start_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 12343
    monitor-exit v2

    goto/16 :goto_2

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v1

    .line 12354
    :catchall_4
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v1

    .line 12361
    .restart local v15       #observer:Landroid/content/pm/IPackageMoveObserver;
    :catch_0
    move-exception v8

    .line 12362
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 12247
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v15           #observer:Landroid/content/pm/IPackageMoveObserver;
    .restart local v4       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v21       #uidArr:[I
    :catchall_5
    move-exception v1

    move-object/from16 v5, v21

    .end local v21           #uidArr:[I
    .restart local v5       #uidArr:[I
    goto/16 :goto_4

    .end local v4           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #uidArr:[I
    .restart local v18       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21       #uidArr:[I
    :catchall_6
    move-exception v1

    move-object/from16 v4, v18

    .end local v18           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v5, v21

    .end local v21           #uidArr:[I
    .restart local v5       #uidArr:[I
    goto/16 :goto_4
.end method
