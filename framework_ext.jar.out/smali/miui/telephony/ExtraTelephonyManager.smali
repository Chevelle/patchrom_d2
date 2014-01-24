.class public Lmiui/telephony/ExtraTelephonyManager;
.super Ljava/lang/Object;
.source "ExtraTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/ExtraTelephonyManager$TypedSimId;,
        Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;
    }
.end annotation


# static fields
.field public static final ACTION_DEVICE_ID_READY:Ljava/lang/String; = "android.intent.action.DEVICE_ID_READY"

.field public static final ACTION_ENTER_INCALL_SCREEN_DURING_CALL:Ljava/lang/String; = "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

.field public static final ACTION_LEAVE_INCALL_SCREEN_DURING_CALL:Ljava/lang/String; = "android.intent.action.LEAVE_INCALL_SCREEN_DURING_CALL"

.field public static final EXTRA_BASE_TIME:Ljava/lang/String; = "base_time"

.field public static final EXTRA_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final EXTRA_CALL_STATE_ACTIVE:Ljava/lang/String; = null

.field public static final EXTRA_CALL_STATE_DIALING:Ljava/lang/String; = null

.field public static final EXTRA_CALL_STATE_HOLDING:Ljava/lang/String; = null

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final PROPERTY_DEVICE_ID:Ljava/lang/String; = "ro.ril.miui.imei"

.field private static final TAG:Ljava/lang/String; = "ExtraTelephonyManager"

.field private static final mDeviceIdCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mIccIdCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mImsiCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->mDeviceIdCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->mIccIdCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->mImsiCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->EXTRA_CALL_STATE_DIALING:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->EXTRA_CALL_STATE_ACTIVE:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->EXTRA_CALL_STATE_HOLDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v0

    return-object v0
.end method

.method public static blockingCompareSimId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    const/4 v4, 0x1

    .line 462
    :goto_0
    return v4

    .line 441
    :cond_0
    invoke-static {p1}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->parse(Ljava/lang/String;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v3

    .line 442
    .local v3, parsedSimId:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    iget v4, v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->type:I

    if-nez v4, :cond_1

    .line 443
    const/4 v2, 0x0

    .line 445
    .local v2, iccid:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetIccId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 449
    :goto_1
    const-string v4, "ExtraTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v4, v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, e:Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v1}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_1

    .line 454
    .end local v1           #e:Lmiui/telephony/exception/IllegalDeviceException;
    .end local v2           #iccid:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 456
    .local v0, currentSimId:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :try_start_1
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetTypedSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :try_end_1
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 460
    :goto_2
    const-string v4, "ExtraTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsed sim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v3, v0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 457
    :catch_1
    move-exception v1

    .line 458
    .restart local v1       #e:Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v1}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_2
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 134
    sget-object v5, Lmiui/telephony/ExtraTelephonyManager;->mDeviceIdCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 135
    .local v2, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 136
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lmiui/telephony/ExtraTelephonyManager$1;

    invoke-direct {v5, p0}, Lmiui/telephony/ExtraTelephonyManager$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 143
    .local v3, fu:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    sget-object v5, Lmiui/telephony/ExtraTelephonyManager;->mDeviceIdCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->run()V

    .line 146
    :cond_0
    sget-object v5, Lmiui/telephony/ExtraTelephonyManager;->mDeviceIdCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/concurrent/Future;

    .line 148
    .end local v3           #fu:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v2       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    .line 150
    .local v4, result:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    new-instance v5, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v6, "device id is empty"

    invoke-direct {v5, v6}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-object v4
.end method

.method public static blockingGetIccId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 199
    sget-object v5, Lmiui/telephony/ExtraTelephonyManager;->mIccIdCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 200
    .local v2, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 201
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lmiui/telephony/ExtraTelephonyManager$3;

    invoke-direct {v5, p0}, Lmiui/telephony/ExtraTelephonyManager$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 208
    .local v3, fu:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    sget-object v5, Lmiui/telephony/ExtraTelephonyManager;->mIccIdCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->run()V

    .line 211
    :cond_0
    sget-object v5, Lmiui/telephony/ExtraTelephonyManager;->mIccIdCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/concurrent/Future;

    .line 213
    .end local v3           #fu:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v2       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    .line 215
    .local v4, result:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 220
    new-instance v5, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v6, "icc id is is empty"

    invoke-direct {v5, v6}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-object v4
.end method

.method public static blockingGetImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v5, Lmiui/telephony/ExtraTelephonyManager;->mImsiCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 278
    .local v2, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 279
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lmiui/telephony/ExtraTelephonyManager$5;

    invoke-direct {v5, p0}, Lmiui/telephony/ExtraTelephonyManager$5;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 286
    .local v3, fu:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    sget-object v5, Lmiui/telephony/ExtraTelephonyManager;->mImsiCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->run()V

    .line 289
    :cond_0
    sget-object v5, Lmiui/telephony/ExtraTelephonyManager;->mImsiCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/concurrent/Future;

    .line 291
    .end local v3           #fu:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v2       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    .line 293
    .local v4, result:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 298
    new-instance v5, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v6, "imsi is is empty"

    invoke-direct {v5, v6}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 300
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-object v4
.end method

.method public static blockingGetSimId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetTypedSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blockingGetTypedSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v0

    .line 355
    .local v0, result:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    if-nez v0, :cond_0

    .line 356
    new-instance v1, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v2, "failed to get sim id"

    invoke-direct {v1, v2}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_0
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 466
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 467
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 468
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :cond_0
    return-void
.end method

.method public static getSimId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 402
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 404
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lmiui/telephony/ExtraTelephonyManager;->getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v1

    .line 405
    .local v1, typedSimId:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v1}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object v2

    .line 408
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 8
    .parameter "tm"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 412
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 413
    .local v2, phoneType:I
    const-string v3, "ExtraTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-ne v2, v7, :cond_0

    .line 415
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, iccid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    new-instance v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    invoke-direct {v3, v6, v0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 425
    .end local v0           #iccid:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 419
    :cond_0
    if-ne v2, v6, :cond_1

    .line 420
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, imsi:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 422
    new-instance v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    invoke-direct {v3, v7, v1}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v1           #imsi:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 102
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, operator:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 120
    .end local v1           #operator:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 108
    .restart local v1       #operator:Ljava/lang/String;
    :cond_1
    const-string v2, "com.android.vending"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils;->isChineseOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fake_mobile_operator_for_vending"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, fake:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 117
    :cond_2
    const-string v1, "310410"

    goto :goto_0
.end method

.method private static waitAndGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 163
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 165
    .local v5, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 166
    .local v2, future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;,"Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    new-instance v4, Lmiui/telephony/ExtraTelephonyManager$2;

    invoke-direct {v4, v2}, Lmiui/telephony/ExtraTelephonyManager$2;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V

    .line 173
    .local v4, receiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DEVICE_ID_READY"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 178
    invoke-virtual {v2, v3}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 181
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    return-object v6

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0

    .line 185
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6
.end method

.method private static waitAndGetIccid(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 234
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 235
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 237
    .local v5, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 238
    .local v2, future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;,"Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    new-instance v4, Lmiui/telephony/ExtraTelephonyManager$4;

    invoke-direct {v4, v2}, Lmiui/telephony/ExtraTelephonyManager$4;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V

    .line 249
    .local v4, receiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 254
    invoke-virtual {v2, v3}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 257
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    return-object v6

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0

    .line 261
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6
.end method

.method private static waitAndGetImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 308
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 309
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 311
    .local v5, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 312
    .local v2, future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;,"Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    new-instance v4, Lmiui/telephony/ExtraTelephonyManager$6;

    invoke-direct {v4, v2}, Lmiui/telephony/ExtraTelephonyManager$6;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V

    .line 323
    .local v4, receiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 325
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 328
    invoke-virtual {v2, v3}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 331
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    return-object v6

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0

    .line 335
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6
.end method

.method private static waitAndGetSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 8
    .parameter "context"

    .prologue
    .line 368
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 369
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 371
    .local v5, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 372
    .local v2, future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;,"Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Lmiui/telephony/ExtraTelephonyManager$TypedSimId;>;"
    new-instance v3, Lmiui/telephony/ExtraTelephonyManager$7;

    invoke-direct {v3, v2, v5}, Lmiui/telephony/ExtraTelephonyManager$7;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;Landroid/telephony/TelephonyManager;)V

    .line 381
    .local v3, receiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    invoke-static {v5}, Lmiui/telephony/ExtraTelephonyManager;->getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v4

    .line 385
    .local v4, simId:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    if-eqz v4, :cond_0

    .line 386
    invoke-virtual {v2, v4}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 389
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    return-object v6

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ExtraTelephonyManager"

    const-string v7, "exception when get sim id"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    const/4 v6, 0x0

    goto :goto_0

    .line 394
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6
.end method
