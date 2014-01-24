.class Lmiui/maml/elements/MusicControlScreenElement$2;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/high16 v11, 0x3ff0

    .line 500
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsPlaying:Z
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$900(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$700(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v7

    const/high16 v8, -0x8000

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2200(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2400(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/maml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2400(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/maml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 508
    .local v0, currentTime:J
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLastUpdateTime:J
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2600(Lmiui/maml/elements/MusicControlScreenElement;)J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-static {v7, v8, v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$2514(Lmiui/maml/elements/MusicControlScreenElement;J)J

    .line 509
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2500(Lmiui/maml/elements/MusicControlScreenElement;)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 510
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mLastUpdateTime:J
    invoke-static {v7, v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$2602(Lmiui/maml/elements/MusicControlScreenElement;J)J

    .line 512
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v7

    if-gez v7, :cond_6

    .line 513
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2500(Lmiui/maml/elements/MusicControlScreenElement;)J

    move-result-wide v7

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v9

    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v10}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    .line 514
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v7, v6}, Lmiui/maml/elements/MusicControlScreenElement;->access$2012(Lmiui/maml/elements/MusicControlScreenElement;I)I

    .line 515
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 516
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2900(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_2

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget-object v4, v4, v8

    :cond_2
    invoke-virtual {v7, v4}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 517
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    aget-object v4, v4, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v4

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    move v4, v5

    :goto_1
    add-int/2addr v4, v8

    invoke-virtual {v7, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 519
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$3000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 520
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2500(Lmiui/maml/elements/MusicControlScreenElement;)J

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v6}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v7

    aget v6, v6, v7

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double v5, v4, v11

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_5

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v4

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget v4, v4, v7

    :goto_2
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    aget v7, v7, v8

    sub-int/2addr v4, v7

    int-to-double v7, v4

    div-double v2, v5, v7

    .line 523
    .local v2, progress:D
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$3100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 552
    .end local v2           #progress:D
    :cond_3
    :goto_3
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgressInterval:I
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$3400(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 517
    goto/16 :goto_1

    .line 520
    :cond_5
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2400(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    goto :goto_2

    .line 525
    :cond_6
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_7

    .line 526
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2500(Lmiui/maml/elements/MusicControlScreenElement;)J

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v6}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v7

    aget v6, v6, v7

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v4, v11

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v6}, Lmiui/maml/elements/MusicControlScreenElement;->access$2400(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    aget v7, v7, v8

    sub-int/2addr v6, v7

    int-to-double v6, v6

    div-double v2, v4, v6

    .line 528
    .restart local v2       #progress:D
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$3100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    goto :goto_3

    .line 530
    .end local v2           #progress:D
    :cond_7
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2500(Lmiui/maml/elements/MusicControlScreenElement;)J

    move-result-wide v7

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v9

    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v10}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_c

    .line 531
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v7, v6}, Lmiui/maml/elements/MusicControlScreenElement;->access$2012(Lmiui/maml/elements/MusicControlScreenElement;I)I

    .line 532
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 533
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$3200(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 534
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2900(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_8

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget-object v4, v4, v8

    :cond_8
    invoke-virtual {v7, v4}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 535
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2200(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2200(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_a

    const-string v4, "\n"

    :goto_4
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$3300(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v4

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2200(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 538
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v8, v9, :cond_9

    move v6, v5

    :cond_9
    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 540
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$3000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 541
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2500(Lmiui/maml/elements/MusicControlScreenElement;)J

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v6}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v7

    aget v6, v6, v7

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double v5, v4, v11

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_b

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v4

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget v4, v4, v7

    :goto_5
    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    aget v7, v7, v8

    sub-int/2addr v4, v7

    int-to-double v7, v4

    div-double v2, v5, v7

    .line 544
    .restart local v2       #progress:D
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$3100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    goto/16 :goto_3

    .line 535
    .end local v2           #progress:D
    :cond_a
    const-string v4, ""

    goto/16 :goto_4

    .line 541
    :cond_b
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2400(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    goto :goto_5

    .line 546
    :cond_c
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2500(Lmiui/maml/elements/MusicControlScreenElement;)J

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v6}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v7

    aget v6, v6, v7

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v4, v11

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v6}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I
    invoke-static {v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I
    invoke-static {v8}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v8

    aget v7, v7, v8

    sub-int/2addr v6, v7

    int-to-double v6, v6

    div-double v2, v4, v6

    .line 548
    .restart local v2       #progress:D
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$3100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    goto/16 :goto_3
.end method
