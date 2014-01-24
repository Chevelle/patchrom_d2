.class public abstract Lmiui/maml/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$1;,
        Lmiui/maml/ActionCommand$AnimationProperty;,
        Lmiui/maml/ActionCommand$VisibilityProperty;,
        Lmiui/maml/ActionCommand$PropertyCommand;,
        Lmiui/maml/ActionCommand$DelayCommand;,
        Lmiui/maml/ActionCommand$ConditionCommand;,
        Lmiui/maml/ActionCommand$ExternCommand;,
        Lmiui/maml/ActionCommand$SoundCommand;,
        Lmiui/maml/ActionCommand$IntentCommand;,
        Lmiui/maml/ActionCommand$VariableBinderCommand;,
        Lmiui/maml/ActionCommand$VariableAssignmentCommand;,
        Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;,
        Lmiui/maml/ActionCommand$BluetoothSwitchCommand;,
        Lmiui/maml/ActionCommand$DataSwitchCommand;,
        Lmiui/maml/ActionCommand$WifiSwitchCommand;,
        Lmiui/maml/ActionCommand$WifiStateTracker;,
        Lmiui/maml/ActionCommand$StateTracker;,
        Lmiui/maml/ActionCommand$OnOffCommandHelper;,
        Lmiui/maml/ActionCommand$RingModeCommand;,
        Lmiui/maml/ActionCommand$ModeToggleHelper;,
        Lmiui/maml/ActionCommand$NotificationReceiver;,
        Lmiui/maml/ActionCommand$StatefulActionCommand;
    }
.end annotation


# static fields
.field private static final COMMAND_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final COMMAND_DATA:Ljava/lang/String; = "Data"

.field private static final COMMAND_RING_MODE:Ljava/lang/String; = "RingMode"

.field private static final COMMAND_USB_STORAGE:Ljava/lang/String; = "UsbStorage"

.field private static final COMMAND_WIFI:Ljava/lang/String; = "Wifi"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field protected mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1315
    iput-object p1, p0, Lmiui/maml/ActionCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 1316
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;
    .locals 4
    .parameter "root"
    .parameter "target"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-object v2

    .line 1291
    :cond_1
    new-instance v1, Lmiui/maml/util/Variable;

    invoke-direct {v1, p1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 1292
    .local v1, targetObj:Lmiui/maml/util/Variable;
    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1293
    invoke-static {p0, p1, p2}, Lmiui/maml/ActionCommand$PropertyCommand;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;

    move-result-object v2

    goto :goto_0

    .line 1296
    :cond_2
    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, property:Ljava/lang/String;
    const-string v3, "RingMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1298
    new-instance v2, Lmiui/maml/ActionCommand$RingModeCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$RingModeCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 1299
    :cond_3
    const-string v3, "Wifi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1300
    new-instance v2, Lmiui/maml/ActionCommand$WifiSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$WifiSwitchCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 1301
    :cond_4
    const-string v3, "Data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1302
    new-instance v2, Lmiui/maml/ActionCommand$DataSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$DataSwitchCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 1303
    :cond_5
    const-string v3, "Bluetooth"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1304
    new-instance v2, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 1305
    :cond_6
    const-string v3, "UsbStorage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1306
    new-instance v2, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static create(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/ActionCommand;
    .locals 12
    .parameter "ele"
    .parameter "root"

    .prologue
    const-wide/16 v10, 0x0

    .line 1249
    if-nez p0, :cond_0

    .line 1250
    const/4 v4, 0x0

    .line 1284
    :goto_0
    return-object v4

    .line 1252
    :cond_0
    const-string v9, "condition"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 1253
    .local v0, condition:Lmiui/maml/data/Expression;
    const-string v9, "delayCondition"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    .line 1254
    .local v3, delayCondition:Lmiui/maml/data/Expression;
    const-string v9, "delay"

    invoke-static {p0, v9, v10, v11}, Lmiui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1255
    .local v1, delay:J
    const/4 v4, 0x0

    .line 1256
    .local v4, ret:Lmiui/maml/ActionCommand;
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 1257
    .local v6, tag:Ljava/lang/String;
    const-string v9, "Command"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1258
    const-string v9, "target"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1259
    .local v7, target:Ljava/lang/String;
    const-string v9, "value"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1260
    .local v8, value:Ljava/lang/String;
    invoke-static {p1, v7, v8}, Lmiui/maml/ActionCommand;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;

    move-result-object v4

    move-object v5, v4

    .line 1275
    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .end local v7           #target:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    .local v5, ret:Lmiui/maml/ActionCommand;
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 1276
    new-instance v4, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v4, v5, v3}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .line 1278
    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    :cond_1
    cmp-long v9, v1, v10

    if-lez v9, :cond_2

    if-eqz v5, :cond_2

    .line 1279
    new-instance v4, Lmiui/maml/ActionCommand$DelayCommand;

    invoke-direct {v4, v5, v1, v2}, Lmiui/maml/ActionCommand$DelayCommand;-><init>(Lmiui/maml/ActionCommand;J)V

    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .line 1281
    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    :cond_2
    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    .line 1282
    new-instance v4, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v4, v5, v0}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    goto :goto_0

    .line 1261
    :cond_3
    const-string v9, "VariableCommand"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1262
    new-instance v4, Lmiui/maml/ActionCommand$VariableAssignmentCommand;

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    invoke-direct {v4, p1, p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1263
    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    :cond_4
    const-string v9, "BinderCommand"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1264
    new-instance v4, Lmiui/maml/ActionCommand$VariableBinderCommand;

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    invoke-direct {v4, p1, p0}, Lmiui/maml/ActionCommand$VariableBinderCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1265
    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    :cond_5
    const-string v9, "IntentCommand"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1266
    new-instance v4, Lmiui/maml/ActionCommand$IntentCommand;

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    invoke-direct {v4, p1, p0}, Lmiui/maml/ActionCommand$IntentCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1267
    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    :cond_6
    const-string v9, "SoundCommand"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1268
    new-instance v4, Lmiui/maml/ActionCommand$SoundCommand;

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    invoke-direct {v4, p1, p0}, Lmiui/maml/ActionCommand$SoundCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1269
    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    :cond_7
    const-string v9, "ExternCommand"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1270
    new-instance v4, Lmiui/maml/ActionCommand$ExternCommand;

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    invoke-direct {v4, p1, p0}, Lmiui/maml/ActionCommand$ExternCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1271
    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    :cond_8
    invoke-static {}, Lmiui/maml/ImmVibrateManager;->isImmersionSupport()Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "VibrateCommand"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1272
    new-instance v4, Lmiui/maml/VibrateCommand;

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    invoke-direct {v4, p1, p0}, Lmiui/maml/VibrateCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1

    :cond_9
    move-object v4, v5

    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    goto/16 :goto_0

    :cond_a
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto/16 :goto_1
.end method


# virtual methods
.method protected abstract doPerform()V
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1333
    return-void
.end method

.method protected getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1330
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 1336
    return-void
.end method

.method public perform()V
    .locals 0

    .prologue
    .line 1319
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->doPerform()V

    .line 1320
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 1339
    return-void
.end method
