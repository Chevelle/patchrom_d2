.class final Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;
.super Landroid/os/Handler;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionHandler"
.end annotation


# static fields
.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x5

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x6

.field public static final MSG_DESTROY_SERVICE:I = 0x10

.field public static final MSG_DISPATCH_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x9

.field public static final MSG_DISPATCH_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0xa

.field public static final MSG_DISPATCH_PRINTERS_ADDED:I = 0x3

.field public static final MSG_DISPATCH_PRINTERS_REMOVED:I = 0x4

.field public static final MSG_DISPATCH_START_PRINTER_DISCOVERY:I = 0xb

.field public static final MSG_DISPATCH_STOP_PRINTER_DISCOVERY:I = 0xc

.field public static final MSG_PRINTERS_ADDED:I = 0x1

.field public static final MSG_PRINTERS_REMOVED:I = 0x2

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x7

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0xe

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x8

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0xf

.field public static final MSG_VALIDATE_PRINTERS:I = 0xd


# instance fields
.field final synthetic this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 1410
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1411
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    .line 1416
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 1515
    :goto_0
    return-void

    .line 1418
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1419
    .local v1, args:Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1420
    .local v2, observer:Landroid/print/IPrinterDiscoveryObserver;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1421
    .local v0, addedPrinters:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1422
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    invoke-static {v8, v2, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$900(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    goto :goto_0

    .line 1426
    .end local v0           #addedPrinters:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v1           #args:Lcom/android/internal/os/SomeArgs;
    .end local v2           #observer:Landroid/print/IPrinterDiscoveryObserver;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1427
    .restart local v1       #args:Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1428
    .restart local v2       #observer:Landroid/print/IPrinterDiscoveryObserver;
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 1429
    .local v5, removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1430
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    invoke-static {v8, v2, v5}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1000(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 1434
    .end local v1           #args:Lcom/android/internal/os/SomeArgs;
    .end local v2           #observer:Landroid/print/IPrinterDiscoveryObserver;
    .end local v5           #removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1435
    .restart local v0       #addedPrinters:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersAdded(Ljava/util/List;)V
    invoke-static {v8, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1100(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_0

    .line 1439
    .end local v0           #addedPrinters:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 1440
    .restart local v5       #removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersRemoved(Ljava/util/List;)V
    invoke-static {v8, v5}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1200(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_0

    .line 1444
    .end local v5           #removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1445
    .local v6, service:Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->createPrinterDiscoverySession()V

    goto :goto_0

    .line 1449
    .end local v6           #service:Lcom/android/server/print/RemotePrintService;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1450
    .restart local v6       #service:Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->destroyPrinterDiscoverySession()V

    goto :goto_0

    .line 1454
    .end local v6           #service:Lcom/android/server/print/RemotePrintService;
    :pswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1455
    .restart local v6       #service:Lcom/android/server/print/RemotePrintService;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/print/RemotePrintService;->startPrinterDiscovery(Ljava/util/List;)V

    goto :goto_0

    .line 1459
    .end local v6           #service:Lcom/android/server/print/RemotePrintService;
    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1460
    .restart local v6       #service:Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->stopPrinterDiscovery()V

    goto :goto_0

    .line 1464
    .end local v6           #service:Lcom/android/server/print/RemotePrintService;
    :pswitch_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1465
    .local v7, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchCreatePrinterDiscoverySession(Ljava/util/List;)V
    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1300(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_0

    .line 1469
    .end local v7           #services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1470
    .restart local v7       #services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchDestroyPrinterDiscoverySession(Ljava/util/List;)V
    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1400(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_0

    .line 1474
    .end local v7           #services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1475
    .restart local v1       #args:Lcom/android/internal/os/SomeArgs;
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1476
    .restart local v7       #services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1477
    .local v4, printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1478
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStartPrinterDiscovery(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v8, v7, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1500(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1482
    .end local v1           #args:Lcom/android/internal/os/SomeArgs;
    .end local v4           #printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v7           #services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1483
    .restart local v7       #services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStopPrinterDiscovery(Ljava/util/List;)V
    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1600(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1487
    .end local v7           #services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1488
    .restart local v1       #args:Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1489
    .restart local v6       #service:Lcom/android/server/print/RemotePrintService;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1490
    .restart local v4       #printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1491
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    invoke-static {v8, v6, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1700(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1495
    .end local v1           #args:Lcom/android/internal/os/SomeArgs;
    .end local v4           #printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v6           #service:Lcom/android/server/print/RemotePrintService;
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1496
    .restart local v1       #args:Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1497
    .restart local v6       #service:Lcom/android/server/print/RemotePrintService;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrinterId;

    .line 1498
    .local v3, printerId:Landroid/print/PrinterId;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1499
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    invoke-static {v8, v6, v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1800(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto/16 :goto_0

    .line 1503
    .end local v1           #args:Lcom/android/internal/os/SomeArgs;
    .end local v3           #printerId:Landroid/print/PrinterId;
    .end local v6           #service:Lcom/android/server/print/RemotePrintService;
    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1504
    .restart local v1       #args:Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1505
    .restart local v6       #service:Lcom/android/server/print/RemotePrintService;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrinterId;

    .line 1506
    .restart local v3       #printerId:Landroid/print/PrinterId;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1507
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #calls: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    invoke-static {v8, v6, v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1900(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto/16 :goto_0

    .line 1511
    .end local v1           #args:Lcom/android/internal/os/SomeArgs;
    .end local v3           #printerId:Landroid/print/PrinterId;
    .end local v6           #service:Lcom/android/server/print/RemotePrintService;
    :pswitch_f
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1512
    .restart local v6       #service:Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto/16 :goto_0

    .line 1416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
