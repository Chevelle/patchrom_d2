.class final Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;
.super Landroid/os/Handler;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HealthServiceMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    .line 142
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;Lcom/android/bluetooth/hdp/HealthService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 147
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 150
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 152
    .local v5, appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$200(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    .line 153
    .local v14, appInfo:Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    if-eqz v14, :cond_0

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getRole()I

    move-result v6

    #calls: Lcom/android/bluetooth/hdp/HealthService;->convertRoleToHal(I)I
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$300(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v21

    .line 155
    .local v21, halRole:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result v6

    #calls: Lcom/android/bluetooth/hdp/HealthService;->convertChannelTypeToHal(I)I
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$400(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v20

    .line 159
    .local v20, halChannelType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    move-result v6

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    move-result-object v7

    move/from16 v0, v21

    move/from16 v1, v20

    #calls: Lcom/android/bluetooth/hdp/HealthService;->registerHealthAppNative(IILjava/lang/String;I)I
    invoke-static {v3, v6, v0, v7, v1}, Lcom/android/bluetooth/hdp/HealthService;->access$500(Lcom/android/bluetooth/hdp/HealthService;IILjava/lang/String;I)I

    move-result v13

    .line 161
    .local v13, appId:I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_1

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    const/4 v6, 0x1

    #calls: Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v3, v5, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 164
    #calls: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->cleanup()V
    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$100(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$200(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_1
    new-instance v3, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-direct {v3, v6, v5}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;)V

    #setter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;
    invoke-static {v14, v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$702(Lcom/android/bluetooth/hdp/HealthService$AppInfo;Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;)Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    .line 169
    #getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$800(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothHealthCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 171
    .local v15, binder:Landroid/os/IBinder;
    :try_start_0
    #getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;
    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$700(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v15, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    #setter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I
    invoke-static {v14, v13}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$902(Lcom/android/bluetooth/hdp/HealthService$AppInfo;I)I

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    const/4 v6, 0x0

    #calls: Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v3, v5, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    goto/16 :goto_0

    .line 172
    :catch_0
    move-exception v19

    .line 173
    .local v19, e:Landroid/os/RemoteException;
    const-string v3, "HealthService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LinktoDeath Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    .end local v5           #appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v13           #appId:I
    .end local v14           #appInfo:Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    .end local v15           #binder:Landroid/os/IBinder;
    .end local v19           #e:Landroid/os/RemoteException;
    .end local v20           #halChannelType:I
    .end local v21           #halRole:I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 185
    .restart local v5       #appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$200(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$900(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I

    move-result v13

    .line 186
    .restart local v13       #appId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #calls: Lcom/android/bluetooth/hdp/HealthService;->unregisterHealthAppNative(I)Z
    invoke-static {v3, v13}, Lcom/android/bluetooth/hdp/HealthService;->access$1000(Lcom/android/bluetooth/hdp/HealthService;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    const-string v3, "HealthService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unregister application: id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    const/4 v6, 0x3

    #calls: Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v3, v5, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    goto/16 :goto_0

    .line 195
    .end local v5           #appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v13           #appId:I
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 196
    .local v16, chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1100(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v18

    .line 197
    .local v18, devAddr:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$200(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$900(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I

    move-result v13

    .line 198
    .restart local v13       #appId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v18

    #calls: Lcom/android/bluetooth/hdp/HealthService;->connectChannelNative([BI)I
    invoke-static {v3, v0, v13}, Lcom/android/bluetooth/hdp/HealthService;->access$1400(Lcom/android/bluetooth/hdp/HealthService;[BI)I

    move-result v3

    move-object/from16 v0, v16

    #setter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1302(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I

    .line 199
    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1100(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1500(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    #calls: Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->access$1600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1100(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1500(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    #calls: Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->access$1600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    goto/16 :goto_0

    .line 213
    .end local v13           #appId:I
    .end local v16           #chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .end local v18           #devAddr:[B
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 214
    .restart local v16       #chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v6

    #calls: Lcom/android/bluetooth/hdp/HealthService;->disconnectChannelNative(I)Z
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$1700(Lcom/android/bluetooth/hdp/HealthService;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1100(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1500(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    #calls: Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->access$1600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1100(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1500(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    #calls: Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->access$1600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    goto/16 :goto_0

    .line 228
    .end local v16           #chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/bluetooth/hdp/HealthService;->findAppConfigByAppId(I)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$1800(Lcom/android/bluetooth/hdp/HealthService;I)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v5

    .line 229
    .restart local v5       #appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    if-eqz v5, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/bluetooth/hdp/HealthService;->convertHalRegStatus(I)I
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$1900(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v22

    .line 232
    .local v22, regStatus:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move/from16 v0, v22

    #calls: Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v3, v5, v0}, Lcom/android/bluetooth/hdp/HealthService;->access$600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 233
    const/4 v3, 0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    move/from16 v0, v22

    if-ne v0, v3, :cond_0

    .line 236
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$200(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    .line 237
    .restart local v14       #appInfo:Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    #calls: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->cleanup()V
    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$100(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$200(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 244
    .end local v5           #appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v14           #appInfo:Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    .end local v22           #regStatus:I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;

    .line 245
    .local v17, channelStateEvent:Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mChannelId:I

    #calls: Lcom/android/bluetooth/hdp/HealthService;->findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$2000(Lcom/android/bluetooth/hdp/HealthService;I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-result-object v2

    .line 247
    .local v2, chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    if-nez v2, :cond_3

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAppId:I

    #calls: Lcom/android/bluetooth/hdp/HealthService;->findAppConfigByAppId(I)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$1800(Lcom/android/bluetooth/hdp/HealthService;I)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v5

    .line 251
    .restart local v5       #appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAddr:[B

    #calls: Lcom/android/bluetooth/hdp/HealthService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$2100(Lcom/android/bluetooth/hdp/HealthService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 252
    .local v4, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .end local v2           #chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;ILcom/android/bluetooth/hdp/HealthService$1;)V

    .line 253
    .restart local v2       #chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mChannelId:I

    #setter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static {v2, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1302(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$2300(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mState:I

    #calls: Lcom/android/bluetooth/hdp/HealthService;->convertHalChannelState(I)I
    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->access$2400(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v9

    .line 257
    .local v9, newState:I
    const/4 v3, 0x2

    if-ne v9, v3, :cond_4

    .line 259
    :try_start_1
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    #setter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1502(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v7

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1100(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$2500(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v10

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1500(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v12

    #calls: Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v6 .. v12}, Lcom/android/bluetooth/hdp/HealthService;->access$1600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 271
    #setter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I
    invoke-static {v2, v9}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$2502(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I

    .line 272
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mState:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    #getter for: Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->access$2300(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 260
    :catch_1
    move-exception v19

    .line 261
    .local v19, e:Ljava/io/IOException;
    const-string v3, "HealthService"

    const-string v6, "failed to dup ParcelFileDescriptor"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 267
    .end local v19           #e:Ljava/io/IOException;
    :cond_4
    const/4 v3, 0x0

    #setter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1502(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    goto :goto_2

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
