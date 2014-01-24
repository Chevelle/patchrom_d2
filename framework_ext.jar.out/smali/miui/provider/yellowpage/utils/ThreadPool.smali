.class public Lmiui/provider/yellowpage/utils/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field private static THREAD_POOL_COUNT:I

.field private static sExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0xa

    sput v0, Lmiui/provider/yellowpage/utils/ThreadPool;->THREAD_POOL_COUNT:I

    .line 11
    sget v0, Lmiui/provider/yellowpage/utils/ThreadPool;->THREAD_POOL_COUNT:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/utils/ThreadPool;->sExecutor:Ljava/util/concurrent/ExecutorService;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 15
    sget-object v0, Lmiui/provider/yellowpage/utils/ThreadPool;->sExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method
