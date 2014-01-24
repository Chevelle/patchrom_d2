.class Lmiui/widget/DateTimePicker$PickerValueChangeListener;
.super Ljava/lang/Object;
.source "DateTimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickerValueChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DateTimePicker;


# direct methods
.method private constructor <init>(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/DateTimePicker;Lmiui/widget/DateTimePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiui/widget/DateTimePicker;)V

    return-void
.end method

.method private notifyTimeChanged(Lmiui/widget/DateTimePicker;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 434
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnTimeChangedListener;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$2300(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnTimeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnTimeChangedListener;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$2300(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnTimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-virtual {v1}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lmiui/widget/DateTimePicker$OnTimeChangedListener;->onTimeChanged(Lmiui/widget/DateTimePicker;J)V

    .line 437
    :cond_0
    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 4
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 398
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$800(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 399
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #setter for: Lmiui/widget/DateTimePicker;->mDay:I
    invoke-static {v0, p3}, Lmiui/widget/DateTimePicker;->access$902(Lmiui/widget/DateTimePicker;I)I

    .line 401
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->adjustHour()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1000(Lmiui/widget/DateTimePicker;)V

    .line 402
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->adjustMinute()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1100(Lmiui/widget/DateTimePicker;)V

    .line 403
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0, v0}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->notifyTimeChanged(Lmiui/widget/DateTimePicker;)V

    .line 405
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateHourPicker()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1200(Lmiui/widget/DateTimePicker;)V

    .line 406
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateMinutePicker()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1300(Lmiui/widget/DateTimePicker;)V

    .line 408
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$800(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDay:I
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$900(Lmiui/widget/DateTimePicker;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_1

    .line 409
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mEndDayOfYear:I
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$1500(Lmiui/widget/DateTimePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x32

    iget-object v2, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mPickerMinDay:I
    invoke-static {v2}, Lmiui/widget/DateTimePicker;->access$1400(Lmiui/widget/DateTimePicker;)I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    #setter for: Lmiui/widget/DateTimePicker;->mPickerMinDay:I
    invoke-static {v0, v1}, Lmiui/widget/DateTimePicker;->access$1402(Lmiui/widget/DateTimePicker;I)I

    .line 411
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateDayPicker(Z)V
    invoke-static {v0, v3}, Lmiui/widget/DateTimePicker;->access$1600(Lmiui/widget/DateTimePicker;Z)V

    .line 430
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updatePickers()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$2200(Lmiui/widget/DateTimePicker;)V

    .line 431
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDay:I
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$900(Lmiui/widget/DateTimePicker;)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$800(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mPickerMinDay:I
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1400(Lmiui/widget/DateTimePicker;)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mStartDayOfYear:I
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$1700(Lmiui/widget/DateTimePicker;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mStartDayOfYear:I
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$1700(Lmiui/widget/DateTimePicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mPickerMinDay:I
    invoke-static {v2}, Lmiui/widget/DateTimePicker;->access$1400(Lmiui/widget/DateTimePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x19

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    #setter for: Lmiui/widget/DateTimePicker;->mPickerMinDay:I
    invoke-static {v0, v1}, Lmiui/widget/DateTimePicker;->access$1402(Lmiui/widget/DateTimePicker;I)I

    .line 416
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateDayPicker(Z)V
    invoke-static {v0, v3}, Lmiui/widget/DateTimePicker;->access$1600(Lmiui/widget/DateTimePicker;Z)V

    goto :goto_0

    .line 418
    :cond_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1800(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 419
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #setter for: Lmiui/widget/DateTimePicker;->mHour:I
    invoke-static {v0, p3}, Lmiui/widget/DateTimePicker;->access$1902(Lmiui/widget/DateTimePicker;I)I

    .line 421
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->adjustMinute()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1100(Lmiui/widget/DateTimePicker;)V

    .line 422
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0, v0}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->notifyTimeChanged(Lmiui/widget/DateTimePicker;)V

    .line 424
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateMinutePicker()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1300(Lmiui/widget/DateTimePicker;)V

    goto :goto_0

    .line 425
    :cond_3
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$2000(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 426
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    #setter for: Lmiui/widget/DateTimePicker;->mMinute:I
    invoke-static {v0, p3}, Lmiui/widget/DateTimePicker;->access$2102(Lmiui/widget/DateTimePicker;I)I

    .line 428
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0, v0}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->notifyTimeChanged(Lmiui/widget/DateTimePicker;)V

    goto :goto_0
.end method
