.class public Lmiui/widget/DateTimePicker;
.super Landroid/widget/LinearLayout;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DateTimePicker$1;,
        Lmiui/widget/DateTimePicker$DayUpdater;,
        Lmiui/widget/DateTimePicker$PickerValueChangeListener;,
        Lmiui/widget/DateTimePicker$DayFormatter;,
        Lmiui/widget/DateTimePicker$SavedState;,
        Lmiui/widget/DateTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DAY_DISPLAY_CACHE_MIN_SIZE:I = 0x5

.field private static final DAY_DISPLAY_RANGE:I = 0x32

.field private static final DAY_INITIALIZE_RANGE:I = 0x5

.field public static final DEFAULT_MINUTE_INTERVAL:I = 0x1


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mDay:I

.field private mDayDisplayedValues:[Ljava/lang/String;

.field private mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

.field private mDayPicker:Landroid/widget/NumberPicker;

.field private mEndDayOfYear:I

.field private final mGmtOff:I

.field private mHour:I

.field private mHourPicker:Landroid/widget/NumberPicker;

.field private mListener:Lmiui/widget/DateTimePicker$OnTimeChangedListener;

.field private mMinute:I

.field private mMinuteDisplayedValues:[Ljava/lang/String;

.field private mMinuteInterval:I

.field private mMinutePicker:Landroid/widget/NumberPicker;

.field private mPickerMinDay:I

.field private mStartDayOfYear:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartTime:J

.field private mStartYear:I

.field private final mTempCal:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput v3, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    .line 74
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x603000a

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    new-instance v1, Lmiui/widget/DateTimePicker$PickerValueChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiui/widget/DateTimePicker;Lmiui/widget/DateTimePicker$1;)V

    .line 80
    .local v1, listener:Lmiui/widget/DateTimePicker$PickerValueChangeListener;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 81
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lmiui/widget/DateTimePicker;->mGmtOff:I

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/DateTimePicker;->mTempCal:Ljava/util/Calendar;

    .line 83
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mTempCal:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 85
    const v2, 0x60b0108

    invoke-virtual {p0, v2}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 86
    const v2, 0x60b004e

    invoke-virtual {p0, v2}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    .line 87
    const v2, 0x60b0059

    invoke-virtual {p0, v2}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    .line 88
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 89
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 90
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 93
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    iget v4, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 94
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDateTimeInfo()V

    .line 95
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updatePickers()V

    .line 96
    return-void
.end method

.method static synthetic access$100(Lmiui/widget/DateTimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lmiui/widget/DateTimePicker;->mStartYear:I

    return v0
.end method

.method static synthetic access$1000(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->adjustHour()V

    return-void
.end method

.method static synthetic access$1100(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->adjustMinute()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    return-void
.end method

.method static synthetic access$1300(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method static synthetic access$1400(Lmiui/widget/DateTimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    return v0
.end method

.method static synthetic access$1402(Lmiui/widget/DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    return p1
.end method

.method static synthetic access$1500(Lmiui/widget/DateTimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lmiui/widget/DateTimePicker;->mEndDayOfYear:I

    return v0
.end method

.method static synthetic access$1600(Lmiui/widget/DateTimePicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmiui/widget/DateTimePicker;->updateDayPicker(Z)V

    return-void
.end method

.method static synthetic access$1700(Lmiui/widget/DateTimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    return v0
.end method

.method static synthetic access$1800(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$1902(Lmiui/widget/DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lmiui/widget/DateTimePicker;->mHour:I

    return p1
.end method

.method static synthetic access$200(Lmiui/widget/DateTimePicker;Ljava/util/Calendar;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DateTimePicker;->getDayOffset(Ljava/util/Calendar;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$2102(Lmiui/widget/DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lmiui/widget/DateTimePicker;->mMinute:I

    return p1
.end method

.method static synthetic access$2200(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updatePickers()V

    return-void
.end method

.method static synthetic access$2300(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnTimeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnTimeChangedListener;

    return-object v0
.end method

.method static synthetic access$2400(Lmiui/widget/DateTimePicker;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmiui/widget/DateTimePicker;->updateDayPickerDisplay([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/DateTimePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/DateTimePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/widget/DateTimePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/DateTimePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/DateTimePicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/widget/DateTimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lmiui/widget/DateTimePicker;->mDay:I

    return v0
.end method

.method static synthetic access$902(Lmiui/widget/DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lmiui/widget/DateTimePicker;->mDay:I

    return p1
.end method

.method private adjustHour()V
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    iget v1, p0, Lmiui/widget/DateTimePicker;->mDay:I

    if-ne v0, v1, :cond_0

    .line 262
    iget v0, p0, Lmiui/widget/DateTimePicker;->mHour:I

    iget v1, p0, Lmiui/widget/DateTimePicker;->mStartHour:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/DateTimePicker;->mHour:I

    .line 264
    :cond_0
    return-void
.end method

.method private adjustMinute()V
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    iget v1, p0, Lmiui/widget/DateTimePicker;->mDay:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmiui/widget/DateTimePicker;->mStartHour:I

    iget v1, p0, Lmiui/widget/DateTimePicker;->mHour:I

    if-ne v0, v1, :cond_0

    .line 268
    iget v0, p0, Lmiui/widget/DateTimePicker;->mMinute:I

    iget v1, p0, Lmiui/widget/DateTimePicker;->mStartMinute:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/DateTimePicker;->mMinute:I

    .line 270
    :cond_0
    return-void
.end method

.method private doUpdate(J)V
    .locals 2
    .parameter "timeInMillis"

    .prologue
    .line 146
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mTempCal:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/DateTimePicker;->mHour:I

    .line 147
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mTempCal:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/DateTimePicker;->mMinute:I

    .line 148
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mTempCal:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2}, Lmiui/widget/DateTimePicker;->getDayOffset(Ljava/util/Calendar;J)I

    move-result v0

    iget v1, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/DateTimePicker;->mDay:I

    .line 149
    iget v0, p0, Lmiui/widget/DateTimePicker;->mEndDayOfYear:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lmiui/widget/DateTimePicker;->mDay:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/DateTimePicker;->mDay:I

    .line 151
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->adjustHour()V

    .line 152
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->adjustMinute()V

    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/widget/DateTimePicker;->updateDayPicker(Z)V

    .line 155
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    .line 156
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    .line 157
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updatePickers()V

    .line 158
    return-void
.end method

.method private getDayOffset(Ljava/util/Calendar;J)I
    .locals 7
    .parameter "cal"
    .parameter "timeInMillis"

    .prologue
    const/4 v6, 0x6

    .line 161
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 162
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 163
    .local v3, yEnd:I
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 165
    .local v1, doyEnd:I
    const/4 v0, 0x0

    .line 166
    .local v0, dayOffset:I
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 167
    iget v2, p0, Lmiui/widget/DateTimePicker;->mStartYear:I

    .local v2, y:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 168
    const/16 v4, 0xb

    const/16 v5, 0x1f

    invoke-virtual {p1, v2, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 169
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_0
    add-int/2addr v0, v1

    .line 173
    iget v4, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    sub-int/2addr v0, v4

    .line 175
    return v0
.end method

.method private getTimeInMillis(IIII)J
    .locals 2
    .parameter "year"
    .parameter "dayOfYear"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 277
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 278
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 279
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 280
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 281
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 283
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private updateDateTimeInfo()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 111
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    .line 112
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 113
    .local v1, gc:Ljava/util/GregorianCalendar;
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x16e

    .line 114
    .local v0, daysOfYear:I
    :goto_0
    iget v2, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    add-int/2addr v2, v0

    iput v2, p0, Lmiui/widget/DateTimePicker;->mEndDayOfYear:I

    .line 115
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lmiui/widget/DateTimePicker;->mStartHour:I

    .line 116
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v2, v3

    iput v2, p0, Lmiui/widget/DateTimePicker;->mStartMinute:I

    .line 117
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lmiui/widget/DateTimePicker;->mStartYear:I

    .line 118
    iget v2, p0, Lmiui/widget/DateTimePicker;->mStartYear:I

    iget v3, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    iget v4, p0, Lmiui/widget/DateTimePicker;->mStartHour:I

    iget v5, p0, Lmiui/widget/DateTimePicker;->mStartMinute:I

    invoke-direct {p0, v2, v3, v4, v5}, Lmiui/widget/DateTimePicker;->getTimeInMillis(IIII)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/DateTimePicker;->mStartTime:J

    .line 120
    iget v2, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    iput v2, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    iput v2, p0, Lmiui/widget/DateTimePicker;->mDay:I

    .line 121
    new-instance v2, Lmiui/widget/DateTimePicker$DayFormatter;

    iget v3, p0, Lmiui/widget/DateTimePicker;->mStartYear:I

    invoke-direct {v2, p0, v3}, Lmiui/widget/DateTimePicker$DayFormatter;-><init>(Lmiui/widget/DateTimePicker;I)V

    iput-object v2, p0, Lmiui/widget/DateTimePicker;->mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 123
    iget v2, p0, Lmiui/widget/DateTimePicker;->mStartHour:I

    iput v2, p0, Lmiui/widget/DateTimePicker;->mHour:I

    .line 124
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    sget-object v3, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 125
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 127
    iget v2, p0, Lmiui/widget/DateTimePicker;->mStartMinute:I

    iput v2, p0, Lmiui/widget/DateTimePicker;->mMinute:I

    .line 128
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    const/16 v3, 0x3c

    iget v4, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 129
    return-void

    .line 113
    .end local v0           #daysOfYear:I
    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method private updateDayPicker(Z)V
    .locals 7
    .parameter "initialize"

    .prologue
    const/16 v2, 0x32

    .line 179
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    .line 180
    .local v0, range:I
    :goto_0
    if-eqz p1, :cond_0

    .line 181
    iget v3, p0, Lmiui/widget/DateTimePicker;->mEndDayOfYear:I

    sub-int/2addr v3, v0

    iget v4, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    iget v5, p0, Lmiui/widget/DateTimePicker;->mDay:I

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    .line 184
    :cond_0
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v3

    iget v4, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    if-ne v3, v4, :cond_3

    .line 185
    iget v2, p0, Lmiui/widget/DateTimePicker;->mDay:I

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 186
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lmiui/widget/DateTimePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 203
    :cond_1
    :goto_1
    return-void

    .end local v0           #range:I
    :cond_2
    move v0, v2

    .line 179
    goto :goto_0

    .line 189
    .restart local v0       #range:I
    :cond_3
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mDayDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mDayDisplayedValues:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v0, :cond_5

    .line 190
    :cond_4
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lmiui/widget/DateTimePicker;->mDayDisplayedValues:[Ljava/lang/String;

    .line 193
    :cond_5
    iget v1, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    .local v1, value:I
    :goto_2
    iget v3, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_6

    .line 194
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mDayDisplayedValues:[Ljava/lang/String;

    iget v4, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    sub-int v4, v1, v4

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    invoke-virtual {v5, v1}, Lmiui/widget/DateTimePicker$DayFormatter;->format(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 197
    :cond_6
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mDayDisplayedValues:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lmiui/widget/DateTimePicker;->updateDayPickerDisplay([Ljava/lang/String;)V

    .line 199
    if-eqz p1, :cond_1

    .line 200
    new-instance v3, Lmiui/widget/DateTimePicker$DayUpdater;

    iget v4, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    invoke-direct {v3, p0, v4, v2}, Lmiui/widget/DateTimePicker$DayUpdater;-><init>(Lmiui/widget/DateTimePicker;II)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lmiui/widget/DateTimePicker$DayUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private updateDayPickerDisplay([Ljava/lang/String;)V
    .locals 3
    .parameter "displayValues"

    .prologue
    .line 206
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 208
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lmiui/widget/DateTimePicker;->mPickerMinDay:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 209
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 211
    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mDayDisplayedValues:[Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lmiui/widget/DateTimePicker;->mDay:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 213
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDayDisplayedValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 215
    return-void
.end method

.method private updateHourPicker()V
    .locals 3

    .prologue
    .line 220
    iget v1, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    iget v2, p0, Lmiui/widget/DateTimePicker;->mDay:I

    if-ne v1, v2, :cond_0

    .line 221
    iget v0, p0, Lmiui/widget/DateTimePicker;->mStartHour:I

    .line 226
    .local v0, minHour:I
    :goto_0
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 227
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lmiui/widget/DateTimePicker;->mHour:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 228
    return-void

    .line 223
    .end local v0           #minHour:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #minHour:I
    goto :goto_0
.end method

.method private updateMinutePicker()V
    .locals 7

    .prologue
    .line 233
    iget v3, p0, Lmiui/widget/DateTimePicker;->mStartDayOfYear:I

    iget v4, p0, Lmiui/widget/DateTimePicker;->mDay:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmiui/widget/DateTimePicker;->mStartHour:I

    iget v4, p0, Lmiui/widget/DateTimePicker;->mHour:I

    if-ne v3, v4, :cond_1

    .line 234
    iget v0, p0, Lmiui/widget/DateTimePicker;->mStartMinute:I

    .line 239
    .local v0, minMinute:I
    :goto_0
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 240
    iget v3, p0, Lmiui/widget/DateTimePicker;->mMinute:I

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getValue()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 241
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    iget v4, p0, Lmiui/widget/DateTimePicker;->mMinute:I

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 236
    .end local v0           #minMinute:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #minMinute:I
    goto :goto_0

    .line 244
    :cond_2
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 245
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 247
    const/16 v3, 0x3c

    iget v4, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int v1, v3, v4

    .line 248
    .local v1, minuteDisplayLength:I
    sub-int v3, v1, v0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayedValues:[Ljava/lang/String;

    .line 249
    move v2, v0

    .local v2, value:I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 250
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayedValues:[Ljava/lang/String;

    sub-int v4, v2, v0

    sget-object v5, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    iget v6, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    mul-int/2addr v6, v2

    invoke-interface {v5, v6}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 254
    :cond_3
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    iget v4, p0, Lmiui/widget/DateTimePicker;->mMinute:I

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 255
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayedValues:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_1
.end method

.method private updatePickers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 441
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 442
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 443
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->refreshWheel()V

    .line 444
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 446
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->refreshWheel()V

    .line 465
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 449
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->refreshWheel()V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 452
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 453
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 454
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->refreshWheel()V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 457
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->refreshWheel()V

    goto :goto_0

    .line 460
    :cond_3
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 461
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->refreshWheel()V

    .line 462
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 463
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->refreshWheel()V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 292
    return-void
.end method

.method public getTimeInMillis()J
    .locals 5

    .prologue
    .line 273
    iget v0, p0, Lmiui/widget/DateTimePicker;->mStartYear:I

    iget v1, p0, Lmiui/widget/DateTimePicker;->mDay:I

    iget v2, p0, Lmiui/widget/DateTimePicker;->mHour:I

    iget v3, p0, Lmiui/widget/DateTimePicker;->mMinute:I

    iget v4, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    mul-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/widget/DateTimePicker;->getTimeInMillis(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 302
    move-object v0, p1

    check-cast v0, Lmiui/widget/DateTimePicker$SavedState;

    .line 303
    .local v0, ss:Lmiui/widget/DateTimePicker$SavedState;
    invoke-virtual {v0}, Lmiui/widget/DateTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 305
    invoke-virtual {v0}, Lmiui/widget/DateTimePicker$SavedState;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lmiui/widget/DateTimePicker;->update(J)V

    .line 306
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 296
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 298
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lmiui/widget/DateTimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lmiui/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;J)V

    return-object v1
.end method

.method public setMinuteInterval(I)V
    .locals 3
    .parameter "minuteInterval"

    .prologue
    .line 104
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    iget v2, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 105
    iput p1, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    .line 106
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDateTimeInfo()V

    .line 107
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updatePickers()V

    .line 108
    return-void
.end method

.method public setOnTimeChangedListener(Lmiui/widget/DateTimePicker$OnTimeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 99
    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnTimeChangedListener;

    .line 100
    return-void
.end method

.method public update(J)V
    .locals 2
    .parameter "timeInMillis"

    .prologue
    .line 132
    iget-wide v0, p0, Lmiui/widget/DateTimePicker;->mStartTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 133
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mTempCal:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 134
    invoke-direct {p0, p1, p2}, Lmiui/widget/DateTimePicker;->doUpdate(J)V

    .line 135
    return-void
.end method

.method public update(Landroid/text/format/Time;)V
    .locals 4
    .parameter "time"

    .prologue
    .line 138
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 139
    .local v0, timeInMillis:J
    iget-wide v2, p0, Lmiui/widget/DateTimePicker;->mStartTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 140
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mTempCal:Ljava/util/Calendar;

    iget-object v3, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 141
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mTempCal:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 142
    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->doUpdate(J)V

    .line 143
    return-void
.end method
