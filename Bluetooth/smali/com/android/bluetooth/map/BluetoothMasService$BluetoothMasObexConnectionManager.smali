.class Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;
.super Ljava/lang/Object;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothMasObexConnectionManager"
.end annotation


# instance fields
.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMasService;)V
    .locals 7
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    .line 504
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v0, 0x2

    if-ge v3, v0, :cond_0

    .line 505
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v1, v1, v3

    iget v2, v1, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mSupportedMessageTypes:I

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v1, v1, v3

    iget-object v4, v1, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mName:Ljava/lang/String;

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v1, v1, v3

    iget v5, v1, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mRfcommPort:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;-><init>(Lcom/android/bluetooth/map/BluetoothMasService;IILjava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    :cond_0
    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 567
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 569
    .local v0, connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    #setter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mInterrupted:Z
    invoke-static {v0, v3}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$802(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Z)Z

    .line 570
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->closeConnection(Z)V

    goto :goto_0

    .line 572
    .end local v0           #connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 581
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 582
    .local v0, connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mInterrupted:Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$802(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Z)Z

    goto :goto_0

    .line 584
    .end local v0           #connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_0
    return-void
.end method

.method public initiateObexServerSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    .line 513
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 514
    .local v0, connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    #getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    if-eqz v3, :cond_0

    .line 515
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    .line 516
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    #calls: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->startObexServerSession(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMns;)V
    invoke-static {v0, p1, v3}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$600(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMns;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v0           #connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 520
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "BluetoothMasService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught the error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v1           #ex:Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public isAllowedConnection(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 11
    .parameter "remoteDevice"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 587
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, remoteAddress:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 589
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v8, :cond_0

    const-string v8, "BluetoothMasService"

    const-string v9, "Connection request from unknown device"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    :goto_0
    return v7

    .line 592
    :cond_1
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 593
    .local v5, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_6

    .line 594
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 595
    .local v1, connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    #getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v6

    .line 596
    .local v6, socket:Landroid/bluetooth/BluetoothSocket;
    if-eqz v6, :cond_5

    .line 597
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 598
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_5

    .line 599
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 601
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 602
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v7, :cond_2

    .line 603
    const-string v7, "BluetoothMasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection request from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v7, "BluetoothMasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "when MAS id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is connected to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v7, v8

    .line 606
    goto :goto_0

    .line 608
    :cond_3
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v8, :cond_0

    .line 609
    const-string v8, "BluetoothMasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection request from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v8, "BluetoothMasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "when MAS id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is connected to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 617
    :cond_4
    const-string v9, "BluetoothMasService"

    const-string v10, "Connected device has no address!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 623
    .end local v1           #connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    .end local v6           #socket:Landroid/bluetooth/BluetoothSocket;
    :cond_6
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v7, :cond_7

    .line 624
    const-string v7, "BluetoothMasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection request from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v7, "BluetoothMasService"

    const-string v9, "when no MAS instance is connected."

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v7, v8

    .line 627
    goto/16 :goto_0
.end method

.method public setWaitingForConfirmation(I)V
    .locals 4
    .parameter "masId"

    .prologue
    .line 525
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 527
    .local v0, connect:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    .line 532
    .end local v0           #connect:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :goto_0
    return-void

    .line 529
    :cond_0
    const-string v1, "BluetoothMasService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to set waiting for user confirmation for MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v1, "BluetoothMasService"

    const-string v2, "out of index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAll()V
    .locals 3

    .prologue
    .line 575
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 576
    .local v0, connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    #calls: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->startRfcommSocketListener(Lcom/android/bluetooth/map/BluetoothMns;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$900(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Lcom/android/bluetooth/map/BluetoothMns;)V

    goto :goto_0

    .line 578
    .end local v0           #connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_0
    return-void
.end method

.method public stopObexServerSession(I)V
    .locals 4
    .parameter "masId"

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 537
    .local v0, connect:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    #getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    #calls: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->stopObexServerSession()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$700(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)V

    .line 547
    .end local v0           #connect:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :goto_0
    return-void

    .line 540
    .restart local v0       #connect:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_0
    const-string v1, "BluetoothMasService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to stop OBEX Server session for MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v1, "BluetoothMasService"

    const-string v2, "when there is no connected socket"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    .end local v0           #connect:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_1
    const-string v1, "BluetoothMasService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to stop OBEX Server session for MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v1, "BluetoothMasService"

    const-string v2, "out of index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopObexServerSessionAll()V
    .locals 3

    .prologue
    .line 559
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 560
    .local v0, connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    #getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 561
    #calls: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->stopObexServerSession()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$700(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)V

    goto :goto_0

    .line 564
    .end local v0           #connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_1
    return-void
.end method

.method public stopObexServerSessionWaiting()V
    .locals 3

    .prologue
    .line 550
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;

    .line 551
    .local v0, connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    #getter for: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    if-eqz v2, :cond_0

    .line 552
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    .line 553
    #calls: Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->stopObexServerSession()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->access$700(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)V

    goto :goto_0

    .line 556
    .end local v0           #connection:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
    :cond_1
    return-void
.end method
