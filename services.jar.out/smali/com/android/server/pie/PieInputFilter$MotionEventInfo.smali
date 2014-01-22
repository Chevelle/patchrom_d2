.class final Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
.super Ljava/lang/Object;
.source "PieInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pie/PieInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x10

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public cachedTimeMillis:J

.field public event:Landroid/view/MotionEvent;

.field private mInPool:Z

.field public next:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

.field public policyFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->policyFlags:I

    .line 141
    return-void
.end method

.method private initialize(Landroid/view/MotionEvent;I)V
    .locals 2
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 117
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 118
    iput p2, p0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->policyFlags:I

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->cachedTimeMillis:J

    .line 120
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;I)Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    .locals 3
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 100
    sget-object v2, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :try_start_0
    sget v1, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sPoolSize:I

    if-lez v1, :cond_0

    .line 103
    sget v1, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sPoolSize:I

    .line 104
    sget-object v0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sPool:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 105
    .local v0, info:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->next:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    sput-object v1, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sPool:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 106
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->next:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->mInPool:Z

    .line 111
    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->initialize(Landroid/view/MotionEvent;I)V

    .line 112
    monitor-exit v2

    return-object v0

    .line 109
    .end local v0           #info:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    :cond_0
    new-instance v0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;-><init>()V

    .restart local v0       #info:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    goto :goto_0

    .line 113
    .end local v0           #info:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 123
    sget-object v1, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->mInPool:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already recycled."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 127
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->clear()V

    .line 128
    sget v0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 129
    sget v0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sPoolSize:I

    .line 130
    sget-object v0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sPool:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    iput-object v0, p0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->next:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 131
    sput-object p0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->sPool:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->mInPool:Z

    .line 134
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    return-void
.end method
