.class Lcom/android/server/content/SyncManager$12;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/content/SyncManager$AuthoritySyncStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/content/SyncManager$AuthoritySyncStats;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)I
    .locals 5
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 1480
    iget v1, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    iget v2, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1481
    .local v0, compare:I
    if-nez v0, :cond_0

    .line 1482
    iget-wide v1, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    iget-wide v3, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1484
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1476
    check-cast p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .end local p1
    check-cast p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$12;->compare(Lcom/android/server/content/SyncManager$AuthoritySyncStats;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)I

    move-result v0

    return v0
.end method
