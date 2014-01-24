.class public Lmiui/maml/data/DateTimeVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/DateTimeVariableUpdater$2;,
        Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"

.field private static final fields:[I


# instance fields
.field private mAmPm:Lmiui/maml/util/IndexedNumberVariable;

.field protected mCalendar:Ljava/util/Calendar;

.field private mCurDay:J

.field private mCurrentTime:J

.field private mDate:Lmiui/maml/util/IndexedNumberVariable;

.field private mDateLunar:Lmiui/maml/util/IndexedNumberVariable;

.field private mDayOfWeek:Lmiui/maml/util/IndexedNumberVariable;

.field private mHour12:Lmiui/maml/util/IndexedNumberVariable;

.field private mHour24:Lmiui/maml/util/IndexedNumberVariable;

.field private mLastUpdatedTime:J

.field private mMinute:Lmiui/maml/util/IndexedNumberVariable;

.field private mMonth:Lmiui/maml/util/IndexedNumberVariable;

.field private mMonthLunar:Lmiui/maml/util/IndexedNumberVariable;

.field private mMonthLunarLeap:Lmiui/maml/util/IndexedNumberVariable;

.field private mNextAlarm:Lmiui/maml/util/IndexedStringVariable;

.field private mNextUpdateTime:J

.field private mSecond:Lmiui/maml/util/IndexedNumberVariable;

.field private mTime:Lmiui/maml/util/IndexedNumberVariable;

.field private mTimeAccuracy:J

.field private mTimeAccuracyField:I

.field private mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

.field private mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lmiui/maml/util/IndexedNumberVariable;

.field private mYearLunar:Lmiui/maml/util/IndexedNumberVariable;

.field private mYearLunar1864:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->fields:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 83
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 8
    .parameter "m"
    .parameter "accuracy"

    .prologue
    .line 87
    const-string v5, "android.intent.action.TIME_SET"

    invoke-direct {p0, p1, v5}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 61
    new-instance v5, Lmiui/maml/data/DateTimeVariableUpdater$1;

    invoke-direct {v5, p0}, Lmiui/maml/data/DateTimeVariableUpdater$1;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, acc:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    invoke-static {}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object v2

    .local v2, arr$:[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 91
    .local v0, a:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    invoke-virtual {v0}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    move-object v1, v0

    .line 90
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v0           #a:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    .end local v2           #arr$:[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    if-nez v1, :cond_2

    .line 96
    sget-object v1, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 97
    const-string v5, "DateTimeVariableUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid accuracy tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    invoke-direct {p0, v1}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 1
    .parameter "m"
    .parameter "accuracy"

    .prologue
    .line 103
    const-string v0, "android.intent.action.TIME_SET"

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 61
    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/DateTimeVariableUpdater$1;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 104
    invoke-direct {p0, p2}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/DateTimeVariableUpdater;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method private checkUpdateTime()V
    .locals 12

    .prologue
    .line 203
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 206
    .local v3, currentTimeMillis:J
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 208
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->fields:[I

    .local v0, arr$:[I
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget v5, v0, v6

    .line 209
    .local v5, f:I
    iget v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    if-ne v5, v8, :cond_2

    .line 214
    .end local v5           #f:I
    :cond_0
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 215
    .local v1, currentTime:J
    iget-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v8, v8, v1

    if-eqz v8, :cond_1

    .line 216
    iput-wide v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 217
    iget-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 218
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 220
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v10, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    return-void

    .line 211
    .end local v1           #currentTime:J
    .restart local v5       #f:I
    :cond_2
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Ljava/util/Calendar;->set(II)V

    .line 208
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 6
    .parameter "accuracy"

    .prologue
    const-wide/32 v4, 0xea60

    const/16 v3, 0xc

    .line 108
    const-string v0, "DateTimeVariableUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init with accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$2;->$SwitchMap$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    iput-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 128
    iput v3, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 132
    :goto_0
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "year"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/util/IndexedNumberVariable;

    .line 133
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "month"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/util/IndexedNumberVariable;

    .line 134
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "date"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/util/IndexedNumberVariable;

    .line 136
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "year_lunar"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/util/IndexedNumberVariable;

    .line 137
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "year_lunar1864"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/util/IndexedNumberVariable;

    .line 138
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "month_lunar"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/util/IndexedNumberVariable;

    .line 139
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "month_lunar_leap"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/util/IndexedNumberVariable;

    .line 140
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "date_lunar"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/util/IndexedNumberVariable;

    .line 142
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "day_of_week"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/util/IndexedNumberVariable;

    .line 143
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "ampm"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/util/IndexedNumberVariable;

    .line 144
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "hour12"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/util/IndexedNumberVariable;

    .line 145
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "hour24"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/util/IndexedNumberVariable;

    .line 146
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "minute"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/util/IndexedNumberVariable;

    .line 147
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "second"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/util/IndexedNumberVariable;

    .line 148
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "time"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/util/IndexedNumberVariable;

    .line 149
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "time_sys"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

    .line 150
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 151
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    const-string v1, "next_alarm_time"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/util/IndexedStringVariable;

    .line 153
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "time_format"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

    .line 154
    iget-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_1
    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 156
    return-void

    .line 111
    :pswitch_0
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 112
    const/4 v0, 0x5

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 115
    :pswitch_1
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 116
    const/16 v0, 0xa

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 119
    :pswitch_2
    iput-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 120
    iput v3, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 123
    :pswitch_3
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 124
    const/16 v0, 0xd

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 154
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshAlarm()V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, nextAlarm:Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v1, v0}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private updateTime()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 225
    .local v2, currentTimeMillis:J
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

    long-to-double v9, v2

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 227
    const-wide/16 v8, 0x3e8

    div-long v0, v2, v8

    .line 228
    .local v0, currentTime:J
    iget-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    .line 229
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 231
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 232
    .local v7, year:I
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 233
    .local v6, month:I
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 234
    .local v4, date:I
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 235
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 236
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 237
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 238
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v9, v7

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 239
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v9, v6

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 240
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v9, v4

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 242
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 243
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 245
    int-to-long v8, v4

    iget-wide v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurDay:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 246
    invoke-static {v7, v6, v4}, Lmiui/util/LunarDate;->calLunar(III)[J

    move-result-object v5

    .line 247
    .local v5, lunarDate:[J
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/util/IndexedNumberVariable;

    const/4 v9, 0x0

    aget-wide v9, v5, v9

    long-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 248
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/util/IndexedNumberVariable;

    aget-wide v9, v5, v12

    long-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 249
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/util/IndexedNumberVariable;

    aget-wide v9, v5, v13

    long-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 250
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/util/IndexedNumberVariable;

    const/4 v9, 0x3

    aget-wide v9, v5, v9

    long-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 251
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/util/IndexedNumberVariable;

    const/4 v9, 0x6

    aget-wide v9, v5, v9

    long-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 252
    mul-int/lit16 v8, v7, 0x2710

    mul-int/lit8 v9, v6, 0x64

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    int-to-long v8, v8

    iput-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurDay:J

    .line 254
    .end local v5           #lunarDate:[J
    :cond_0
    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 256
    .end local v4           #date:I
    .end local v6           #month:I
    .end local v7           #year:I
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 190
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->finish()V

    .line 191
    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurDay:J

    .line 192
    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 193
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->init()V

    .line 161
    iget-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 164
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 165
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 166
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 167
    return-void

    .line 161
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 260
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 261
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->pause()V

    .line 186
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->resume()V

    .line 177
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 181
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 182
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lmiui/maml/data/NotifierVariableUpdater;->tick(J)V

    .line 171
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/util/IndexedNumberVariable;

    long-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 172
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 173
    return-void
.end method
