.class final Lcom/android/server/print/UserState$PrintJobForAppCache;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobForAppCache"
.end annotation


# instance fields
.field private final mPrintJobsForRunningApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method private constructor <init>(Lcom/android/server/print/UserState;)V
    .locals 1
    .parameter

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1520
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1519
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 1613
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1614
    :try_start_0
    const-string v7, "  "

    .line 1615
    .local v7, tab:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1616
    .local v2, bucketCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1617
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1618
    .local v0, appId:I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 1619
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1620
    .local v1, bucket:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 1621
    .local v6, printJobCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 1622
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    .line 1623
    .local v5, printJob:Landroid/print/PrintJobInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 1621
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1616
    .end local v5           #printJob:Landroid/print/PrintJobInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1626
    .end local v0           #appId:I
    .end local v1           #bucket:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v4           #j:I
    .end local v6           #printJobCount:I
    :cond_1
    monitor-exit v9

    .line 1627
    return-void

    .line 1626
    .end local v2           #bucketCount:I
    .end local v3           #i:I
    .end local v7           #tab:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 7
    .parameter "printJobId"
    .parameter "appId"

    .prologue
    const/4 v4, 0x0

    .line 1568
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1569
    :try_start_0
    iget-object v6, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1570
    .local v3, printJobsForApp:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v3, :cond_0

    .line 1571
    monitor-exit v5

    move-object v1, v4

    .line 1581
    :goto_0
    return-object v1

    .line 1573
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1574
    .local v2, printJobCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1575
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 1576
    .local v1, printJob:Landroid/print/PrintJobInfo;
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1577
    monitor-exit v5

    goto :goto_0

    .line 1580
    .end local v0           #i:I
    .end local v1           #printJob:Landroid/print/PrintJobInfo;
    .end local v2           #printJobCount:I
    .end local v3           #printJobsForApp:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1574
    .restart local v0       #i:I
    .restart local v1       #printJob:Landroid/print/PrintJobInfo;
    .restart local v2       #printJobCount:I
    .restart local v3       #printJobsForApp:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1580
    .end local v1           #printJob:Landroid/print/PrintJobInfo;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 1581
    goto :goto_0
.end method

.method public getPrintJobs(I)Ljava/util/List;
    .locals 7
    .parameter "appId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1585
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1586
    const/4 v3, 0x0

    .line 1587
    .local v3, printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    const/4 v5, -0x2

    if-ne p1, v5, :cond_2

    .line 1588
    :try_start_0
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1589
    .local v1, bucketCount:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .local v4, printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1590
    :try_start_1
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1591
    .local v0, bucket:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v4, :cond_5

    .line 1592
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1594
    .end local v4           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3       #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_1
    :try_start_2
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1589
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4       #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    goto :goto_0

    .end local v0           #bucket:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_0
    move-object v3, v4

    .line 1605
    .end local v1           #bucketCount:I
    .end local v2           #i:I
    .end local v4           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3       #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_1
    :goto_2
    if-eqz v3, :cond_4

    .line 1606
    monitor-exit v6

    .line 1608
    .end local v3           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_3
    return-object v3

    .line 1597
    .restart local v3       #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1598
    .restart local v0       #bucket:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v0, :cond_1

    .line 1599
    if-nez v3, :cond_3

    .line 1600
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4       #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    move-object v3, v4

    .line 1602
    .end local v4           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3       #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1609
    .end local v0           #bucket:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1608
    :cond_4
    :try_start_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v5

    goto :goto_3

    .line 1609
    .end local v3           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v1       #bucketCount:I
    .restart local v2       #i:I
    .restart local v4       #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3       #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    goto :goto_4

    .end local v3           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v0       #bucket:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4       #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_5
    move-object v3, v4

    .end local v4           #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3       #printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    goto :goto_1
.end method

.method public onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
    .locals 5
    .parameter "creator"
    .parameter "appId"
    .parameter "printJob"

    .prologue
    const/4 v2, 0x0

    .line 1526
    :try_start_0
    new-instance v3, Lcom/android/server/print/UserState$PrintJobForAppCache$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache$1;-><init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1540
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1541
    .local v0, printJobsForApp:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v0, :cond_0

    .line 1542
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #printJobsForApp:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    .restart local v0       #printJobsForApp:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1545
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    monitor-exit v3

    .line 1547
    const/4 v2, 0x1

    .end local v0           #printJobsForApp:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_0
    return v2

    .line 1535
    :catch_0
    move-exception v1

    .line 1537
    .local v1, re:Landroid/os/RemoteException;
    goto :goto_0

    .line 1546
    .end local v1           #re:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 7
    .parameter "printJob"

    .prologue
    .line 1551
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1552
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1554
    .local v3, printJobsForApp:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v3, :cond_0

    .line 1555
    monitor-exit v5

    .line 1565
    :goto_0
    return-void

    .line 1557
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1558
    .local v2, printJobCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1559
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 1560
    .local v1, oldPrintJob:Landroid/print/PrintJobInfo;
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1561
    invoke-interface {v3, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1558
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1564
    .end local v1           #oldPrintJob:Landroid/print/PrintJobInfo;
    :cond_2
    monitor-exit v5

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #printJobCount:I
    .end local v3           #printJobsForApp:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
