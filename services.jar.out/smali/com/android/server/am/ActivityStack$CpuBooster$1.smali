.class Lcom/android/server/am/ActivityStack$CpuBooster$1;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStack$CpuBooster;->next()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack$CpuBooster;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack$CpuBooster;)V
    .locals 0
    .parameter

    .prologue
    .line 2540
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$CpuBooster$1;->this$0:Lcom/android/server/am/ActivityStack$CpuBooster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$CpuBooster$1;->this$0:Lcom/android/server/am/ActivityStack$CpuBooster;

    #calls: Lcom/android/server/am/ActivityStack$CpuBooster;->next()V
    invoke-static {v0}, Lcom/android/server/am/ActivityStack$CpuBooster;->access$000(Lcom/android/server/am/ActivityStack$CpuBooster;)V

    .line 2544
    return-void
.end method
