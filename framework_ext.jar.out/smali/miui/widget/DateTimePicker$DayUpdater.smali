.class Lmiui/widget/DateTimePicker$DayUpdater;
.super Landroid/os/AsyncTask;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DayUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private nNewMinDay:I

.field private nOrgMinDay:I

.field private nRange:I

.field final synthetic this$0:Lmiui/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Lmiui/widget/DateTimePicker;II)V
    .locals 0
    .parameter
    .parameter "minDay"
    .parameter "range"

    .prologue
    .line 472
    iput-object p1, p0, Lmiui/widget/DateTimePicker$DayUpdater;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 473
    iput p2, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nOrgMinDay:I

    .line 474
    iput p3, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nRange:I

    .line 475
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 467
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker$DayUpdater;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 7
    .parameter "params"

    .prologue
    .line 479
    iget v3, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nRange:I

    new-array v1, v3, [Ljava/lang/String;

    .line 480
    .local v1, result:[Ljava/lang/String;
    new-instance v0, Lmiui/widget/DateTimePicker$DayFormatter;

    iget-object v3, p0, Lmiui/widget/DateTimePicker$DayUpdater;->this$0:Lmiui/widget/DateTimePicker;

    iget-object v4, p0, Lmiui/widget/DateTimePicker$DayUpdater;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mStartYear:I
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$100(Lmiui/widget/DateTimePicker;)I

    move-result v4

    invoke-direct {v0, v3, v4}, Lmiui/widget/DateTimePicker$DayFormatter;-><init>(Lmiui/widget/DateTimePicker;I)V

    .line 481
    .local v0, formatter:Lmiui/widget/DateTimePicker$DayFormatter;
    iget-object v3, p0, Lmiui/widget/DateTimePicker$DayUpdater;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mEndDayOfYear:I
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$1500(Lmiui/widget/DateTimePicker;)I

    move-result v3

    iget v4, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nRange:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lmiui/widget/DateTimePicker$DayUpdater;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mStartDayOfYear:I
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$1700(Lmiui/widget/DateTimePicker;)I

    move-result v4

    iget-object v5, p0, Lmiui/widget/DateTimePicker$DayUpdater;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDay:I
    invoke-static {v5}, Lmiui/widget/DateTimePicker;->access$900(Lmiui/widget/DateTimePicker;)I

    move-result v5

    iget v6, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nRange:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nNewMinDay:I

    .line 482
    iget v2, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nNewMinDay:I

    .local v2, value:I
    :goto_0
    iget v3, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nNewMinDay:I

    iget v4, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nRange:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 483
    iget v3, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nNewMinDay:I

    sub-int v3, v2, v3

    invoke-virtual {v0, v2}, Lmiui/widget/DateTimePicker$DayFormatter;->format(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 467
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker$DayUpdater;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 490
    iget-object v0, p0, Lmiui/widget/DateTimePicker$DayUpdater;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mPickerMinDay:I
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1400(Lmiui/widget/DateTimePicker;)I

    move-result v0

    iget v1, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nOrgMinDay:I

    if-ne v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lmiui/widget/DateTimePicker$DayUpdater;->this$0:Lmiui/widget/DateTimePicker;

    iget v1, p0, Lmiui/widget/DateTimePicker$DayUpdater;->nNewMinDay:I

    #setter for: Lmiui/widget/DateTimePicker;->mPickerMinDay:I
    invoke-static {v0, v1}, Lmiui/widget/DateTimePicker;->access$1402(Lmiui/widget/DateTimePicker;I)I

    .line 492
    iget-object v0, p0, Lmiui/widget/DateTimePicker$DayUpdater;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateDayPickerDisplay([Ljava/lang/String;)V
    invoke-static {v0, p1}, Lmiui/widget/DateTimePicker;->access$2400(Lmiui/widget/DateTimePicker;[Ljava/lang/String;)V

    .line 494
    :cond_0
    return-void
.end method
