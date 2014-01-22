.class public Lcom/android/bluetooth/map/BluetoothMnsObexSession;
.super Ljava/lang/Object;
.source "BluetoothMnsObexSession.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final D:Z = false

.field public static final MSG_CONNECT_TIMEOUT:I = 0x2

.field public static final MSG_SESSION_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BtMns ObexClient"

.field private static final TYPE_EVENT:Ljava/lang/String; = "x-bt/MAP-event-report"

.field private static final V:Z


# instance fields
.field private hsConnect:Ljavax/obex/HeaderSet;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mCs:Ljavax/obex/ClientSession;

.field private mTransport:Ljavax/obex/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->D:Z

    .line 59
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 2
    .parameter "context"
    .parameter "transport"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->hsConnect:Ljavax/obex/HeaderSet;

    .line 73
    if-nez p2, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transport is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 78
    return-void
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 271
    const-string v0, "BtMns ObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when sending event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 119
    const-string v4, "BtMns ObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create ClientSession with transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_0
    new-instance v4, Ljavax/obex/ClientSession;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v4, v5}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/obex/ClientSession;

    .line 122
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/obex/ClientSession;

    if-eqz v4, :cond_1

    .line 127
    iput-boolean v7, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z

    .line 128
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 130
    .local v2, hs:Ljavax/obex/HeaderSet;
    const/16 v4, 0x10

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 134
    .local v3, mnsTarget:[B
    const/16 v4, 0x46

    invoke-virtual {v2, v4, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 136
    monitor-enter p0

    .line 137
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mWaitingForRemote:Z

    .line 138
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v4, v2}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->hsConnect:Ljavax/obex/HeaderSet;

    .line 141
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->D:Z

    if-eqz v4, :cond_0

    const-string v4, "BtMns ObexClient"

    const-string v5, "OBEX session created"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    .end local v2           #hs:Ljavax/obex/HeaderSet;
    .end local v3           #mnsTarget:[B
    :cond_1
    :goto_1
    monitor-enter p0

    .line 148
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mWaitingForRemote:Z

    .line 149
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, e1:Ljava/io/IOException;
    const-string v4, "BtMns ObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OBEX session create error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v2       #hs:Ljavax/obex/HeaderSet;
    .restart local v3       #mnsTarget:[B
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    const-string v4, "BtMns ObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OBEX session connect error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hs:Ljavax/obex/HeaderSet;
    .end local v3           #mnsTarget:[B
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 130
    nop

    :array_0
    .array-data 0x1
        0xbbt
        0x58t
        0x2bt
        0x41t
        0x42t
        0xct
        0x11t
        0xdbt
        0xb0t
        0xdet
        0x8t
        0x0t
        0x20t
        0xct
        0x9at
        0x66t
    .end array-data
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 93
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/obex/ClientSession;

    .line 94
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->D:Z

    if-eqz v1, :cond_1

    const-string v1, "BtMns ObexClient"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_3

    .line 100
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->D:Z

    if-eqz v1, :cond_2

    const-string v1, "BtMns ObexClient"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 102
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->D:Z

    if-eqz v1, :cond_3

    const-string v1, "BtMns ObexClient"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :cond_3
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mTransport:Ljavax/obex/ObexTransport;

    if-eqz v1, :cond_4

    .line 109
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    :cond_4
    :goto_2
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtMns ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 105
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtMns ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 112
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtMns ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTransport.close error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mConnected:Z

    return v0
.end method

.method public sendEvent(Ljava/io/File;B)I
    .locals 26
    .parameter "file"
    .parameter "masInstanceId"

    .prologue
    .line 154
    const/4 v8, 0x0

    .line 155
    .local v8, error:Z
    const/16 v17, -0x1

    .line 157
    .local v17, responseCode:I
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 158
    .local v20, val:[B
    const/16 v21, 0x0

    aput-byte p2, v20, v21

    .line 159
    new-instance v16, Ljavax/obex/HeaderSet;

    invoke-direct/range {v16 .. v16}, Ljavax/obex/HeaderSet;-><init>()V

    .line 160
    .local v16, request:Ljavax/obex/HeaderSet;
    new-instance v4, Ljavax/obex/ApplicationParameter;

    invoke-direct {v4}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 161
    .local v4, ap:Ljavax/obex/ApplicationParameter;
    const/16 v21, 0xf

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 164
    const/16 v21, 0x42

    const-string v22, "x-bt/MAP-event-report"

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 165
    const/16 v21, 0x4c

    invoke-virtual {v4}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v22

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 167
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->hsConnect:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x4

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    const/4 v14, 0x0

    .line 171
    .local v14, putOperation:Ljavax/obex/ClientOperation;
    const/4 v12, 0x0

    .line 172
    .local v12, outputStream:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 174
    .local v9, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 175
    const/16 v21, 0x1

    :try_start_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mWaitingForRemote:Z

    .line 176
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :try_start_2
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_0

    const-string v21, "BtMns ObexClient"

    const-string v22, "Send headerset Event "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mCs:Ljavax/obex/ClientSession;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object v14, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 187
    :goto_0
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 188
    const/16 v21, 0x0

    :try_start_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->mWaitingForRemote:Z

    .line 189
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    if-nez v8, :cond_2

    .line 192
    :try_start_5
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_1

    const-string v21, "BtMns ObexClient"

    const-string v22, "Send headerset Event "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v12

    .line 200
    :cond_2
    :goto_1
    if-nez v8, :cond_d

    .line 201
    const/4 v13, 0x0

    .line 202
    .local v13, position:I
    const/4 v15, 0x0

    .line 203
    .local v15, readLength:I
    const-wide/16 v18, 0x0

    .line 204
    .local v18, timestamp:J
    :try_start_6
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v11

    .line 205
    .local v11, outputBufferSize:I
    new-array v5, v11, [B

    .line 207
    .local v5, buffer:[B
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3

    .line 208
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .local v10, fileInputStream:Ljava/io/FileInputStream;
    :try_start_7
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v21, 0x4000

    move/from16 v0, v21

    invoke-direct {v3, v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 210
    .local v3, a:Ljava/io/BufferedInputStream;
    :cond_3
    :goto_2
    int-to-long v0, v13

    move-wide/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-eqz v21, :cond_c

    .line 211
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 213
    :cond_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v5, v0, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v15

    .line 214
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v5, v0, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 216
    add-int/2addr v13, v15

    .line 217
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_3

    .line 218
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Sending file position = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " readLength "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " bytes took "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v18

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_d

    goto :goto_2

    .line 235
    .end local v3           #a:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v6

    move-object v9, v10

    .line 236
    .end local v5           #buffer:[B
    .end local v10           #fileInputStream:Ljava/io/FileInputStream;
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v18           #timestamp:J
    .local v6, e:Ljava/io/IOException;
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->handleSendException(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 237
    const/4 v8, 0x1

    .line 242
    if-eqz v9, :cond_5

    .line 244
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 250
    :cond_5
    :goto_4
    if-nez v8, :cond_7

    .line 251
    :try_start_a
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 252
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 253
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_6

    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Get response code "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_6
    const/16 v21, 0xa0

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 255
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response error code is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_7
    if-eqz v14, :cond_8

    .line 260
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 267
    .end local v6           #e:Ljava/io/IOException;
    :cond_8
    :goto_5
    return v17

    .line 176
    :catchall_0
    move-exception v21

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v21

    .line 235
    :catch_1
    move-exception v6

    goto :goto_3

    .line 183
    :catch_2
    move-exception v6

    .line 184
    .restart local v6       #e:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error when put HeaderSet "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_3

    .line 185
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 189
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v21

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v21
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_3

    .line 238
    :catch_3
    move-exception v6

    .line 239
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    :try_start_f
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->handleSendException(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 240
    const/4 v8, 0x1

    .line 242
    if-eqz v9, :cond_9

    .line 244
    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 250
    :cond_9
    :goto_7
    if-nez v8, :cond_b

    .line 251
    :try_start_11
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 252
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 253
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_a

    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Get response code "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_a
    const/16 v21, 0xa0

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 255
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response error code is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_b
    if-eqz v14, :cond_8

    .line 260
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_5

    .line 262
    :catch_4
    move-exception v6

    .line 263
    .local v6, e:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error when closing stream after send "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_8
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 194
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 195
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_12
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error when opening OutputStream "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_3

    .line 196
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 223
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:I
    .restart local v15       #readLength:I
    .restart local v18       #timestamp:J
    :cond_c
    int-to-long v0, v13

    move-wide/from16 v21, v0

    :try_start_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-nez v21, :cond_11

    .line 224
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SendFile finished send out file "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " length "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_d

    move-object v9, v10

    .line 242
    .end local v3           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #fileInputStream:Ljava/io/FileInputStream;
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v18           #timestamp:J
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    :cond_d
    :goto_9
    if-eqz v9, :cond_e

    .line 244
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 250
    :cond_e
    :goto_a
    if-nez v8, :cond_10

    .line 251
    :try_start_15
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 252
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 253
    sget-boolean v21, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v21, :cond_f

    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Get response code "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_f
    const/16 v21, 0xa0

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 255
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response error code is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_10
    if-eqz v14, :cond_8

    .line 260
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6

    goto/16 :goto_5

    .line 262
    :catch_6
    move-exception v6

    .line 263
    .restart local v6       #e:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error when closing stream after send "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_8

    .line 228
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:I
    .restart local v15       #readLength:I
    .restart local v18       #timestamp:J
    :cond_11
    const/4 v8, 0x1

    .line 230
    :try_start_16
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->abort()V

    .line 231
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SendFile interrupted when send out file  at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " of "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_d

    move-object v9, v10

    .end local v10           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 242
    .end local v3           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v11           #outputBufferSize:I
    .end local v13           #position:I
    .end local v15           #readLength:I
    .end local v18           #timestamp:J
    :catchall_2
    move-exception v21

    :goto_b
    if-eqz v9, :cond_12

    .line 244
    :try_start_17
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7

    .line 250
    :cond_12
    :goto_c
    if-nez v8, :cond_14

    .line 251
    :try_start_18
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v17

    .line 252
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 253
    sget-boolean v22, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->V:Z

    if-eqz v22, :cond_13

    const-string v22, "BtMns ObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Get response code "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_13
    const/16 v22, 0xa0

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 255
    const-string v22, "BtMns ObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Response error code is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_14
    if-eqz v14, :cond_15

    .line 260
    invoke-virtual {v14}, Ljavax/obex/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8

    .line 242
    :cond_15
    :goto_d
    throw v21

    .line 245
    :catch_7
    move-exception v7

    .line 246
    .local v7, ei:Ljava/io/IOException;
    const-string v22, "BtMns ObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error while closing stream"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 262
    .end local v7           #ei:Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 263
    .restart local v6       #e:Ljava/io/IOException;
    const-string v22, "BtMns ObexClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error when closing stream after send "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 245
    :catch_9
    move-exception v7

    .line 246
    .restart local v7       #ei:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error while closing stream"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 262
    .end local v7           #ei:Ljava/io/IOException;
    :catch_a
    move-exception v6

    .line 263
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error when closing stream after send "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_8

    .line 245
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    :catch_b
    move-exception v7

    .line 246
    .restart local v7       #ei:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error while closing stream"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 245
    .end local v6           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v7           #ei:Ljava/io/IOException;
    :catch_c
    move-exception v7

    .line 246
    .restart local v7       #ei:Ljava/io/IOException;
    const-string v21, "BtMns ObexClient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error while closing stream"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 242
    .end local v7           #ei:Ljava/io/IOException;
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:I
    .restart local v15       #readLength:I
    .restart local v18       #timestamp:J
    :catchall_3
    move-exception v21

    move-object v9, v10

    .end local v10           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 238
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v10       #fileInputStream:Ljava/io/FileInputStream;
    :catch_d
    move-exception v6

    move-object v9, v10

    .end local v10           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_6
.end method
