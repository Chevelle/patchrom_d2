.class public Lmiui/maml/data/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Variables$StringInfo;,
        Lmiui/maml/data/Variables$DoubleInfo;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final GLOBAL:Ljava/lang/String; = "__global"

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"


# instance fields
.field private mDoubleArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/Variables$DoubleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDoubleIndex:I

.field private mNextStringIndex:I

.field private mNumLock:Ljava/lang/Object;

.field private mNumObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStrLock:Ljava/lang/Object;

.field private mStrObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStringArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/Variables$StringInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lmiui/maml/data/Variables;->mNextDoubleIndex:I

    .line 19
    iput v0, p0, Lmiui/maml/data/Variables;->mNextStringIndex:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mNumObjects:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mStrObjects:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mNumLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mStrLock:Ljava/lang/Object;

    return-void
.end method

.method private getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter "object"
    .parameter "property"
    .parameter "nextIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez p2, :cond_0

    .line 91
    const-string p2, "__global"

    .line 92
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 93
    .local v1, obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    .restart local v1       #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 98
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 99
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method


# virtual methods
.method public getNum(I)Ljava/lang/Double;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v2, p0, Lmiui/maml/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lmiui/maml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 148
    :cond_0
    monitor-exit v2

    .line 151
    :goto_0
    return-object v1

    .line 150
    :cond_1
    iget-object v3, p0, Lmiui/maml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$DoubleInfo;

    .line 151
    .local v0, doubleInfo:Lmiui/maml/data/Variables$DoubleInfo;
    if-nez v0, :cond_2

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 152
    .end local v0           #doubleInfo:Lmiui/maml/data/Variables$DoubleInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 151
    .restart local v0       #doubleInfo:Lmiui/maml/data/Variables$DoubleInfo;
    :cond_2
    :try_start_1
    iget-object v1, v0, Lmiui/maml/data/Variables$DoubleInfo;->mValue:Ljava/lang/Double;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getNumVer(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, -0x1

    .line 166
    iget-object v2, p0, Lmiui/maml/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lmiui/maml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 168
    :cond_0
    monitor-exit v2

    .line 171
    :goto_0
    return v1

    .line 170
    :cond_1
    iget-object v3, p0, Lmiui/maml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$DoubleInfo;

    .line 171
    .local v0, doubleInfo:Lmiui/maml/data/Variables$DoubleInfo;
    if-nez v0, :cond_2

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 172
    .end local v0           #doubleInfo:Lmiui/maml/data/Variables$DoubleInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 171
    .restart local v0       #doubleInfo:Lmiui/maml/data/Variables$DoubleInfo;
    :cond_2
    :try_start_1
    iget v1, v0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getStr(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v2, p0, Lmiui/maml/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lmiui/maml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 158
    :cond_0
    monitor-exit v2

    .line 161
    :goto_0
    return-object v1

    .line 160
    :cond_1
    iget-object v3, p0, Lmiui/maml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$StringInfo;

    .line 161
    .local v0, stringInfo:Lmiui/maml/data/Variables$StringInfo;
    if-nez v0, :cond_2

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 162
    .end local v0           #stringInfo:Lmiui/maml/data/Variables$StringInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 161
    .restart local v0       #stringInfo:Lmiui/maml/data/Variables$StringInfo;
    :cond_2
    :try_start_1
    iget-object v1, v0, Lmiui/maml/data/Variables$StringInfo;->mValue:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getStrVer(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, -0x1

    .line 176
    iget-object v2, p0, Lmiui/maml/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lmiui/maml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 178
    :cond_0
    monitor-exit v2

    .line 181
    :goto_0
    return v1

    .line 180
    :cond_1
    iget-object v3, p0, Lmiui/maml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$StringInfo;

    .line 181
    .local v0, stringInfo:Lmiui/maml/data/Variables$StringInfo;
    if-nez v0, :cond_2

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 182
    .end local v0           #stringInfo:Lmiui/maml/data/Variables$StringInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 181
    .restart local v0       #stringInfo:Lmiui/maml/data/Variables$StringInfo;
    :cond_2
    :try_start_1
    iget v1, v0, Lmiui/maml/data/Variables$StringInfo;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public putNum(ID)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 106
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/data/Variables;->putNum(ILjava/lang/Double;)V

    .line 107
    return-void
.end method

.method public putNum(ILjava/lang/Double;)V
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 110
    if-gez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v2, p0, Lmiui/maml/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :goto_1
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 114
    iget-object v1, p0, Lmiui/maml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 117
    :cond_1
    :try_start_1
    iget-object v1, p0, Lmiui/maml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$DoubleInfo;

    .line 118
    .local v0, doubleInfo:Lmiui/maml/data/Variables$DoubleInfo;
    if-nez v0, :cond_2

    .line 119
    new-instance v0, Lmiui/maml/data/Variables$DoubleInfo;

    .end local v0           #doubleInfo:Lmiui/maml/data/Variables$DoubleInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lmiui/maml/data/Variables$DoubleInfo;-><init>(Ljava/lang/Double;I)V

    .line 120
    .restart local v0       #doubleInfo:Lmiui/maml/data/Variables$DoubleInfo;
    iget-object v1, p0, Lmiui/maml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_2
    monitor-exit v2

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {v0, p2}, Lmiui/maml/data/Variables$DoubleInfo;->setValue(Ljava/lang/Double;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public putStr(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 128
    if-gez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v2, p0, Lmiui/maml/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :goto_1
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 132
    iget-object v1, p0, Lmiui/maml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 135
    :cond_1
    :try_start_1
    iget-object v1, p0, Lmiui/maml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$StringInfo;

    .line 136
    .local v0, stringInfo:Lmiui/maml/data/Variables$StringInfo;
    if-nez v0, :cond_2

    .line 137
    new-instance v0, Lmiui/maml/data/Variables$StringInfo;

    .end local v0           #stringInfo:Lmiui/maml/data/Variables$StringInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lmiui/maml/data/Variables$StringInfo;-><init>(Ljava/lang/String;I)V

    .line 138
    .restart local v0       #stringInfo:Lmiui/maml/data/Variables$StringInfo;
    iget-object v1, p0, Lmiui/maml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    :goto_2
    monitor-exit v2

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v0, p2}, Lmiui/maml/data/Variables$StringInfo;->setValue(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public registerNumberVariable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "object"
    .parameter "property"

    .prologue
    .line 66
    iget-object v2, p0, Lmiui/maml/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables;->mNumObjects:Ljava/util/HashMap;

    iget v3, p0, Lmiui/maml/data/Variables;->mNextDoubleIndex:I

    invoke-direct {p0, v1, p1, p2, v3}, Lmiui/maml/data/Variables;->getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, index:I
    iget v1, p0, Lmiui/maml/data/Variables;->mNextDoubleIndex:I

    if-ne v0, v1, :cond_0

    .line 69
    iget v1, p0, Lmiui/maml/data/Variables;->mNextDoubleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/maml/data/Variables;->mNextDoubleIndex:I

    .line 70
    :cond_0
    sget-boolean v1, Lmiui/maml/data/Variables;->DBG:Z

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "Variables"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerNumberVariable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    monitor-exit v2

    return v0

    .line 74
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerStringVariable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "object"
    .parameter "property"

    .prologue
    .line 78
    iget-object v2, p0, Lmiui/maml/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables;->mStrObjects:Ljava/util/HashMap;

    iget v3, p0, Lmiui/maml/data/Variables;->mNextStringIndex:I

    invoke-direct {p0, v1, p1, p2, v3}, Lmiui/maml/data/Variables;->getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, index:I
    iget v1, p0, Lmiui/maml/data/Variables;->mNextStringIndex:I

    if-ne v0, v1, :cond_0

    .line 81
    iget v1, p0, Lmiui/maml/data/Variables;->mNextStringIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/maml/data/Variables;->mNextStringIndex:I

    .line 82
    :cond_0
    sget-boolean v1, Lmiui/maml/data/Variables;->DBG:Z

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "Variables"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerStringVariable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    monitor-exit v2

    return v0

    .line 86
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v3, p0, Lmiui/maml/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 188
    .local v0, M:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 189
    invoke-virtual {p0, v2, v4}, Lmiui/maml/data/Variables;->putNum(ILjava/lang/Double;)V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v3, p0, Lmiui/maml/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 192
    .local v1, N:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 193
    invoke-virtual {p0, v2, v4}, Lmiui/maml/data/Variables;->putStr(ILjava/lang/String;)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    :cond_1
    return-void
.end method
