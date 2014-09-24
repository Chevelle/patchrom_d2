.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHal:I

.field private final mHalLock:Ljava/lang/Object;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    .line 63
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 65
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "ConsumerIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 68
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    .line 69
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-nez v1, :cond_1

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    iget v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-eqz v1, :cond_1

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_1
    return-void
.end method

.method private static native halGetCarrierFrequencies(I)[I
.end method

.method private static native halOpen()I
.end method

.method private static native halTransmit(II[I)I
.end method

.method private throwIfNoIrEmitter()V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 131
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    invoke-static {v0}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies(I)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasIrEmitter()Z
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .locals 11
    .parameter "packageName"
    .parameter "carrierFrequency"
    .parameter "pattern"

    .prologue
    .line 92
    iget-object v7, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.TRANSMIT_IR"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 94
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Requires TRANSMIT_IR permission"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 97
    :cond_0
    const-wide/16 v5, 0x0

    .line 99
    .local v5, totalXmitTime:J
    move-object v0, p3

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 100
    .local v4, slice:I
    if-gtz v4, :cond_1

    .line 101
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Non-positive IR slice"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 103
    :cond_1
    int-to-long v7, v4

    add-long/2addr v5, v7

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v4           #slice:I
    :cond_2
    const-wide/32 v7, 0x1e8480

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    .line 107
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "IR pattern too long"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 110
    :cond_3
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 113
    iget-object v8, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v8

    .line 114
    :try_start_0
    iget v7, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    invoke-static {v7, p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(II[I)I

    move-result v1

    .line 116
    .local v1, err:I
    if-gez v1, :cond_4

    .line 117
    const-string v7, "ConsumerIrService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error transmitting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_4
    monitor-exit v8

    .line 120
    return-void

    .line 119
    .end local v1           #err:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
