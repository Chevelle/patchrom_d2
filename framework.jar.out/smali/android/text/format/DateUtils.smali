.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field public static final FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static sNowTime:Landroid/text/format/Time;

.field private static sStatusTimeFormat:Ljava/text/DateFormat;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 122
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 149
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void

    .line 122
    :array_0
    .array-data 0x4
        0xbft 0x0t 0x4t 0x1t
        0xc0t 0x0t 0x4t 0x1t
        0xcct 0x0t 0x4t 0x1t
        0xcet 0x0t 0x4t 0x1t
        0xc1t 0x0t 0x4t 0x1t
        0xc3t 0x0t 0x4t 0x1t
        0xc5t 0x0t 0x4t 0x1t
        0xc7t 0x0t 0x4t 0x1t
        0xb1t 0x0t 0x4t 0x1t
        0xb2t 0x0t 0x4t 0x1t
        0xb3t 0x0t 0x4t 0x1t
        0xb4t 0x0t 0x4t 0x1t
        0xb6t 0x0t 0x4t 0x1t
        0xb7t 0x0t 0x4t 0x1t
        0xb8t 0x0t 0x4t 0x1t
        0xb5t 0x0t 0x4t 0x1t
    .end array-data

    .line 149
    :array_1
    .array-data 0x4
        0xcat 0x0t 0x4t 0x1t
        0xcbt 0x0t 0x4t 0x1t
        0xcdt 0x0t 0x4t 0x1t
        0xc9t 0x0t 0x4t 0x1t
        0xc2t 0x0t 0x4t 0x1t
        0xc4t 0x0t 0x4t 0x1t
        0xc6t 0x0t 0x4t 0x1t
        0xc8t 0x0t 0x4t 0x1t
        0xb1t 0x0t 0x4t 0x1t
        0xb2t 0x0t 0x4t 0x1t
        0xb3t 0x0t 0x4t 0x1t
        0xb4t 0x0t 0x4t 0x1t
        0xb6t 0x0t 0x4t 0x1t
        0xb7t 0x0t 0x4t 0x1t
        0xb8t 0x0t 0x4t 0x1t
        0xb5t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assign(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2
    .parameter "lval"
    .parameter "rval"

    .prologue
    .line 867
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 868
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 869
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 892
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 893
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 916
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 68
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timeZone"

    .prologue
    .line 1087
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v39

    .line 1088
    .local v39, res:Landroid/content/res/Resources;
    and-int/lit8 v64, p6, 0x1

    if-eqz v64, :cond_5

    const/16 v42, 0x1

    .line 1089
    .local v42, showTime:Z
    :goto_0
    and-int/lit8 v64, p6, 0x2

    if-eqz v64, :cond_6

    const/16 v43, 0x1

    .line 1090
    .local v43, showWeekDay:Z
    :goto_1
    and-int/lit8 v64, p6, 0x4

    if-eqz v64, :cond_7

    const/16 v44, 0x1

    .line 1091
    .local v44, showYear:Z
    :goto_2
    and-int/lit8 v64, p6, 0x8

    if-eqz v64, :cond_8

    const/16 v37, 0x1

    .line 1092
    .local v37, noYear:Z
    :goto_3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move/from16 v64, v0

    if-eqz v64, :cond_9

    const/16 v62, 0x1

    .line 1093
    .local v62, useUTC:Z
    :goto_4
    const v64, 0x88000

    and-int v64, v64, p6

    if-eqz v64, :cond_a

    const/4 v6, 0x1

    .line 1094
    .local v6, abbrevWeekDay:Z
    :goto_5
    const/high16 v64, 0x9

    and-int v64, v64, p6

    if-eqz v64, :cond_b

    const/4 v4, 0x1

    .line 1095
    .local v4, abbrevMonth:Z
    :goto_6
    and-int/lit8 v64, p6, 0x20

    if-eqz v64, :cond_c

    const/16 v35, 0x1

    .line 1096
    .local v35, noMonthDay:Z
    :goto_7
    const/high16 v64, 0x2

    and-int v64, v64, p6

    if-eqz v64, :cond_d

    const/16 v38, 0x1

    .line 1101
    .local v38, numericDate:Z
    :goto_8
    cmp-long v64, p2, p4

    if-nez v64, :cond_e

    const/16 v32, 0x1

    .line 1104
    .local v32, isInstant:Z
    :goto_9
    if-eqz p7, :cond_f

    .line 1105
    new-instance v45, Landroid/text/format/Time;

    move-object/from16 v0, v45

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v45, startDate:Landroid/text/format/Time;
    :goto_a
    move-object/from16 v0, v45

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1115
    if-eqz v32, :cond_11

    .line 1116
    move-object/from16 v14, v45

    .line 1117
    .local v14, endDate:Landroid/text/format/Time;
    const/4 v12, 0x0

    .line 1132
    .local v12, dayDistance:I
    :goto_b
    if-nez v32, :cond_1

    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v64, v0

    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v65, v0

    or-int v64, v64, v65

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v65, v0

    or-int v64, v64, v65

    if-nez v64, :cond_1

    if-eqz v42, :cond_0

    const/16 v64, 0x1

    move/from16 v0, v64

    if-gt v12, v0, :cond_1

    .line 1135
    :cond_0
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x1

    move/from16 v0, v64

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 1136
    const/16 v64, 0x1

    move/from16 v0, v64

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1139
    :cond_1
    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v47, v0

    .line 1140
    .local v47, startDay:I
    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v50, v0

    .line 1141
    .local v50, startMonthNum:I
    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v57, v0

    .line 1143
    .local v57, startYear:I
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    .line 1144
    .local v16, endDay:I
    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    .line 1145
    .local v19, endMonthNum:I
    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    .line 1147
    .local v26, endYear:I
    const-string v56, ""

    .line 1148
    .local v56, startWeekDayString:Ljava/lang/String;
    const-string v25, ""

    .line 1149
    .local v25, endWeekDayString:Ljava/lang/String;
    if-eqz v43, :cond_2

    .line 1150
    const-string v63, ""

    .line 1151
    .local v63, weekDayFormat:Ljava/lang/String;
    if-eqz v6, :cond_14

    .line 1152
    const-string v63, "%a"

    .line 1156
    :goto_c
    move-object/from16 v0, v45

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1157
    if-eqz v32, :cond_15

    move-object/from16 v25, v56

    .line 1160
    .end local v63           #weekDayFormat:Ljava/lang/String;
    :cond_2
    :goto_d
    const-string v55, ""

    .line 1161
    .local v55, startTimeString:Ljava/lang/String;
    const-string v24, ""

    .line 1162
    .local v24, endTimeString:Ljava/lang/String;
    if-eqz v42, :cond_4

    .line 1163
    const-string v54, ""

    .line 1164
    .local v54, startTimeFormat:Ljava/lang/String;
    const-string v23, ""

    .line 1165
    .local v23, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 v64, v0

    if-eqz v64, :cond_16

    const/16 v29, 0x1

    .line 1166
    .local v29, force24Hour:Z
    :goto_e
    and-int/lit8 v64, p6, 0x40

    if-eqz v64, :cond_17

    const/16 v28, 0x1

    .line 1168
    .local v28, force12Hour:Z
    :goto_f
    if-eqz v29, :cond_18

    .line 1169
    const/16 v61, 0x1

    .line 1175
    .local v61, use24Hour:Z
    :goto_10
    if-eqz v61, :cond_1a

    .line 1176
    const v64, 0x104009b

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v54, v23

    .line 1247
    :cond_3
    :goto_11
    move-object/from16 v0, v45

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1248
    if-eqz v32, :cond_2e

    move-object/from16 v24, v55

    .line 1255
    .end local v23           #endTimeFormat:Ljava/lang/String;
    .end local v28           #force12Hour:Z
    .end local v29           #force24Hour:Z
    .end local v54           #startTimeFormat:Ljava/lang/String;
    .end local v61           #use24Hour:Z
    :cond_4
    :goto_12
    if-eqz v44, :cond_2f

    .line 1272
    :goto_13
    if-eqz v38, :cond_33

    .line 1273
    const v64, 0x10400a0

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1304
    .local v13, defaultDateFormat:Ljava/lang/String;
    :goto_14
    if-eqz v43, :cond_3c

    .line 1305
    if-eqz v42, :cond_3b

    .line 1306
    const v64, 0x10400b9

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1318
    .local v30, fullFormat:Ljava/lang/String;
    :goto_15
    if-eqz v35, :cond_3e

    move/from16 v0, v50

    move/from16 v1, v19

    if-ne v0, v1, :cond_3e

    move/from16 v0, v57

    move/from16 v1, v26

    if-ne v0, v1, :cond_3e

    .line 1320
    const-string v64, "%s"

    const/16 v65, 0x1

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    aput-object v67, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    .line 1466
    :goto_16
    return-object v64

    .line 1088
    .end local v4           #abbrevMonth:Z
    .end local v6           #abbrevWeekDay:Z
    .end local v12           #dayDistance:I
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    .end local v14           #endDate:Landroid/text/format/Time;
    .end local v16           #endDay:I
    .end local v19           #endMonthNum:I
    .end local v24           #endTimeString:Ljava/lang/String;
    .end local v25           #endWeekDayString:Ljava/lang/String;
    .end local v26           #endYear:I
    .end local v30           #fullFormat:Ljava/lang/String;
    .end local v32           #isInstant:Z
    .end local v35           #noMonthDay:Z
    .end local v37           #noYear:Z
    .end local v38           #numericDate:Z
    .end local v42           #showTime:Z
    .end local v43           #showWeekDay:Z
    .end local v44           #showYear:Z
    .end local v45           #startDate:Landroid/text/format/Time;
    .end local v47           #startDay:I
    .end local v50           #startMonthNum:I
    .end local v55           #startTimeString:Ljava/lang/String;
    .end local v56           #startWeekDayString:Ljava/lang/String;
    .end local v57           #startYear:I
    .end local v62           #useUTC:Z
    :cond_5
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 1089
    .restart local v42       #showTime:Z
    :cond_6
    const/16 v43, 0x0

    goto/16 :goto_1

    .line 1090
    .restart local v43       #showWeekDay:Z
    :cond_7
    const/16 v44, 0x0

    goto/16 :goto_2

    .line 1091
    .restart local v44       #showYear:Z
    :cond_8
    const/16 v37, 0x0

    goto/16 :goto_3

    .line 1092
    .restart local v37       #noYear:Z
    :cond_9
    const/16 v62, 0x0

    goto/16 :goto_4

    .line 1093
    .restart local v62       #useUTC:Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1094
    .restart local v6       #abbrevWeekDay:Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1095
    .restart local v4       #abbrevMonth:Z
    :cond_c
    const/16 v35, 0x0

    goto/16 :goto_7

    .line 1096
    .restart local v35       #noMonthDay:Z
    :cond_d
    const/16 v38, 0x0

    goto/16 :goto_8

    .line 1101
    .restart local v38       #numericDate:Z
    :cond_e
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 1106
    .restart local v32       #isInstant:Z
    :cond_f
    if-eqz v62, :cond_10

    .line 1107
    new-instance v45, Landroid/text/format/Time;

    const-string v64, "UTC"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v45       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 1109
    .end local v45           #startDate:Landroid/text/format/Time;
    :cond_10
    new-instance v45, Landroid/text/format/Time;

    invoke-direct/range {v45 .. v45}, Landroid/text/format/Time;-><init>()V

    .restart local v45       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 1119
    :cond_11
    if-eqz p7, :cond_12

    .line 1120
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p7

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1126
    .restart local v14       #endDate:Landroid/text/format/Time;
    :goto_17
    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1127
    move-object/from16 v0, v45

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v64, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v64

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v48

    .line 1128
    .local v48, startJulianDay:I
    iget-wide v0, v14, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v64, v0

    move-wide/from16 v0, p4

    move-wide/from16 v2, v64

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v17

    .line 1129
    .local v17, endJulianDay:I
    sub-int v12, v17, v48

    .restart local v12       #dayDistance:I
    goto/16 :goto_b

    .line 1121
    .end local v12           #dayDistance:I
    .end local v14           #endDate:Landroid/text/format/Time;
    .end local v17           #endJulianDay:I
    .end local v48           #startJulianDay:I
    :cond_12
    if-eqz v62, :cond_13

    .line 1122
    new-instance v14, Landroid/text/format/Time;

    const-string v64, "UTC"

    move-object/from16 v0, v64

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v14       #endDate:Landroid/text/format/Time;
    goto :goto_17

    .line 1124
    .end local v14           #endDate:Landroid/text/format/Time;
    :cond_13
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .restart local v14       #endDate:Landroid/text/format/Time;
    goto :goto_17

    .line 1154
    .restart local v12       #dayDistance:I
    .restart local v16       #endDay:I
    .restart local v19       #endMonthNum:I
    .restart local v25       #endWeekDayString:Ljava/lang/String;
    .restart local v26       #endYear:I
    .restart local v47       #startDay:I
    .restart local v50       #startMonthNum:I
    .restart local v56       #startWeekDayString:Ljava/lang/String;
    .restart local v57       #startYear:I
    .restart local v63       #weekDayFormat:Ljava/lang/String;
    :cond_14
    const-string v63, "%A"

    goto/16 :goto_c

    .line 1157
    :cond_15
    move-object/from16 v0, v63

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_d

    .line 1165
    .end local v63           #weekDayFormat:Ljava/lang/String;
    .restart local v23       #endTimeFormat:Ljava/lang/String;
    .restart local v24       #endTimeString:Ljava/lang/String;
    .restart local v54       #startTimeFormat:Ljava/lang/String;
    .restart local v55       #startTimeString:Ljava/lang/String;
    :cond_16
    const/16 v29, 0x0

    goto/16 :goto_e

    .line 1166
    .restart local v29       #force24Hour:Z
    :cond_17
    const/16 v28, 0x0

    goto/16 :goto_f

    .line 1170
    .restart local v28       #force12Hour:Z
    :cond_18
    if-eqz v28, :cond_19

    .line 1171
    const/16 v61, 0x0

    .restart local v61       #use24Hour:Z
    goto/16 :goto_10

    .line 1173
    .end local v61           #use24Hour:Z
    :cond_19
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v61

    .restart local v61       #use24Hour:Z
    goto/16 :goto_10

    .line 1179
    :cond_1a
    const v64, 0x84000

    and-int v64, v64, p6

    if-eqz v64, :cond_1c

    const/4 v5, 0x1

    .line 1180
    .local v5, abbrevTime:Z
    :goto_18
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 v64, v0

    if-eqz v64, :cond_1d

    const/4 v7, 0x1

    .line 1181
    .local v7, capAMPM:Z
    :goto_19
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 v64, v0

    if-eqz v64, :cond_1e

    const/16 v36, 0x1

    .line 1182
    .local v36, noNoon:Z
    :goto_1a
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 v64, v0

    if-eqz v64, :cond_1f

    const/4 v9, 0x1

    .line 1183
    .local v9, capNoon:Z
    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 v64, v0

    if-eqz v64, :cond_20

    const/16 v34, 0x1

    .line 1184
    .local v34, noMidnight:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 v64, v0

    if-eqz v64, :cond_21

    const/4 v8, 0x1

    .line 1186
    .local v8, capMidnight:Z
    :goto_1d
    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v64, v0

    if-nez v64, :cond_22

    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v64, v0

    if-nez v64, :cond_22

    const/16 v52, 0x1

    .line 1187
    .local v52, startOnTheHour:Z
    :goto_1e
    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v64, v0

    if-nez v64, :cond_23

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v64, v0

    if-nez v64, :cond_23

    const/16 v21, 0x1

    .line 1188
    .local v21, endOnTheHour:Z
    :goto_1f
    if-eqz v5, :cond_25

    if-eqz v52, :cond_25

    .line 1189
    if-eqz v7, :cond_24

    .line 1190
    const v64, 0x10403a9

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 1206
    :goto_20
    if-nez v32, :cond_1b

    .line 1207
    if-eqz v5, :cond_28

    if-eqz v21, :cond_28

    .line 1208
    if-eqz v7, :cond_27

    .line 1209
    const v64, 0x10403a9

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1221
    :goto_21
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v64, v0

    const/16 v65, 0xc

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_2b

    if-eqz v21, :cond_2b

    if-nez v36, :cond_2b

    .line 1222
    if-eqz v9, :cond_2a

    .line 1223
    const v64, 0x104042b

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1236
    :cond_1b
    :goto_22
    move-object/from16 v0, v45

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v64, v0

    const/16 v65, 0xc

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_3

    if-eqz v52, :cond_3

    if-nez v36, :cond_3

    .line 1237
    if-eqz v9, :cond_2d

    .line 1238
    const v64, 0x104042b

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_11

    .line 1179
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v21           #endOnTheHour:Z
    .end local v34           #noMidnight:Z
    .end local v36           #noNoon:Z
    .end local v52           #startOnTheHour:Z
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_18

    .line 1180
    .restart local v5       #abbrevTime:Z
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_19

    .line 1181
    .restart local v7       #capAMPM:Z
    :cond_1e
    const/16 v36, 0x0

    goto/16 :goto_1a

    .line 1182
    .restart local v36       #noNoon:Z
    :cond_1f
    const/4 v9, 0x0

    goto/16 :goto_1b

    .line 1183
    .restart local v9       #capNoon:Z
    :cond_20
    const/16 v34, 0x0

    goto/16 :goto_1c

    .line 1184
    .restart local v34       #noMidnight:Z
    :cond_21
    const/4 v8, 0x0

    goto/16 :goto_1d

    .line 1186
    .restart local v8       #capMidnight:Z
    :cond_22
    const/16 v52, 0x0

    goto/16 :goto_1e

    .line 1187
    .restart local v52       #startOnTheHour:Z
    :cond_23
    const/16 v21, 0x0

    goto :goto_1f

    .line 1192
    .restart local v21       #endOnTheHour:Z
    :cond_24
    const v64, 0x10403a8

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v54

    goto :goto_20

    .line 1195
    :cond_25
    if-eqz v7, :cond_26

    .line 1196
    const v64, 0x104009d

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_20

    .line 1198
    :cond_26
    const v64, 0x104009c

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_20

    .line 1211
    :cond_27
    const v64, 0x10403a8

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_21

    .line 1214
    :cond_28
    if-eqz v7, :cond_29

    .line 1215
    const v64, 0x104009d

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_21

    .line 1217
    :cond_29
    const v64, 0x104009c

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_21

    .line 1225
    :cond_2a
    const v64, 0x104042a

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 1227
    :cond_2b
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v64, v0

    if-nez v64, :cond_1b

    if-eqz v21, :cond_1b

    if-nez v34, :cond_1b

    .line 1228
    if-eqz v8, :cond_2c

    .line 1229
    const v64, 0x104042d

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 1231
    :cond_2c
    const v64, 0x104042c

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 1240
    :cond_2d
    const v64, 0x104042a

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_11

    .line 1248
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v21           #endOnTheHour:Z
    .end local v34           #noMidnight:Z
    .end local v36           #noNoon:Z
    .end local v52           #startOnTheHour:Z
    :cond_2e
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_12

    .line 1259
    .end local v23           #endTimeFormat:Ljava/lang/String;
    .end local v28           #force12Hour:Z
    .end local v29           #force24Hour:Z
    .end local v54           #startTimeFormat:Ljava/lang/String;
    .end local v61           #use24Hour:Z
    :cond_2f
    if-eqz v37, :cond_30

    .line 1261
    const/16 v44, 0x0

    goto/16 :goto_13

    .line 1262
    :cond_30
    move/from16 v0, v57

    move/from16 v1, v26

    if-eq v0, v1, :cond_31

    .line 1263
    const/16 v44, 0x1

    goto/16 :goto_13

    .line 1266
    :cond_31
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1267
    .local v10, currentTime:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 1268
    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v64, v0

    move/from16 v0, v57

    move/from16 v1, v64

    if-eq v0, v1, :cond_32

    const/16 v44, 0x1

    :goto_23
    goto/16 :goto_13

    :cond_32
    const/16 v44, 0x0

    goto :goto_23

    .line 1274
    .end local v10           #currentTime:Landroid/text/format/Time;
    :cond_33
    if-eqz v44, :cond_37

    .line 1275
    if-eqz v4, :cond_35

    .line 1276
    if-eqz v35, :cond_34

    .line 1277
    const v64, 0x10400ae

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1279
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_34
    const v64, 0x10400a8

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1282
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_35
    if-eqz v35, :cond_36

    .line 1283
    const v64, 0x10400ab

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1285
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_36
    const v64, 0x10400a3

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1289
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_37
    if-eqz v4, :cond_39

    .line 1290
    if-eqz v35, :cond_38

    .line 1291
    const v64, 0x10400ad

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1293
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_38
    const v64, 0x10400ac

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1296
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_39
    if-eqz v35, :cond_3a

    .line 1297
    const v64, 0x10400aa

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1299
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3a
    const v64, 0x10400a9

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1308
    :cond_3b
    const v64, 0x10400ba

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1311
    .end local v30           #fullFormat:Ljava/lang/String;
    :cond_3c
    if-eqz v42, :cond_3d

    .line 1312
    const v64, 0x10400bb

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1314
    .end local v30           #fullFormat:Ljava/lang/String;
    :cond_3d
    const v64, 0x10400b0

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1323
    :cond_3e
    move/from16 v0, v57

    move/from16 v1, v26

    if-ne v0, v1, :cond_3f

    if-eqz v35, :cond_40

    .line 1327
    :cond_3f
    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1328
    .local v46, startDateString:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1332
    .local v15, endDateString:Ljava/lang/String;
    const/16 v64, 0x6

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v56, v64, v65

    const/16 v65, 0x1

    aput-object v46, v64, v65

    const/16 v65, 0x2

    aput-object v55, v64, v65

    const/16 v65, 0x3

    aput-object v25, v64, v65

    const/16 v65, 0x4

    aput-object v15, v64, v65

    const/16 v65, 0x5

    aput-object v24, v64, v65

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1339
    .end local v15           #endDateString:Ljava/lang/String;
    .end local v46           #startDateString:Ljava/lang/String;
    :cond_40
    if-eqz v38, :cond_46

    .line 1340
    const-string v33, "%m"

    .line 1347
    .local v33, monthFormat:Ljava/lang/String;
    :goto_24
    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1348
    .local v51, startMonthString:Ljava/lang/String;
    const-string v64, "%-d"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1349
    .local v49, startMonthDayString:Ljava/lang/String;
    const-string v64, "%Y"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1351
    .local v58, startYearString:Ljava/lang/String;
    if-eqz v32, :cond_48

    const/16 v20, 0x0

    .line 1352
    .local v20, endMonthString:Ljava/lang/String;
    :goto_25
    if-eqz v32, :cond_49

    const/16 v18, 0x0

    .line 1353
    .local v18, endMonthDayString:Ljava/lang/String;
    :goto_26
    if-eqz v32, :cond_4a

    const/16 v27, 0x0

    .line 1355
    .local v27, endYearString:Ljava/lang/String;
    :goto_27
    move-object/from16 v53, v51

    .line 1356
    .local v53, startStandaloneMonthString:Ljava/lang/String;
    move-object/from16 v22, v20

    .line 1358
    .local v22, endStandaloneMonthString:Ljava/lang/String;
    if-nez v38, :cond_41

    if-nez v4, :cond_41

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v64

    const-string v65, "fa"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_41

    .line 1359
    const-string v64, "%-B"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1360
    const-string v64, "%-B"

    move-object/from16 v0, v64

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1363
    :cond_41
    move/from16 v0, v50

    move/from16 v1, v19

    if-eq v0, v1, :cond_4b

    .line 1369
    const/16 v31, 0x0

    .line 1370
    .local v31, index:I
    if-eqz v43, :cond_42

    const/16 v31, 0x1

    .line 1371
    :cond_42
    if-eqz v44, :cond_43

    add-int/lit8 v31, v31, 0x2

    .line 1372
    :cond_43
    if-eqz v42, :cond_44

    add-int/lit8 v31, v31, 0x4

    .line 1373
    :cond_44
    if-eqz v38, :cond_45

    add-int/lit8 v31, v31, 0x8

    .line 1374
    :cond_45
    sget-object v64, Landroid/text/format/DateUtils;->sameYearTable:[I

    aget v40, v64, v31

    .line 1375
    .local v40, resId:I
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1379
    const/16 v64, 0xc

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v56, v64, v65

    const/16 v65, 0x1

    aput-object v51, v64, v65

    const/16 v65, 0x2

    aput-object v49, v64, v65

    const/16 v65, 0x3

    aput-object v58, v64, v65

    const/16 v65, 0x4

    aput-object v55, v64, v65

    const/16 v65, 0x5

    aput-object v25, v64, v65

    const/16 v65, 0x6

    aput-object v20, v64, v65

    const/16 v65, 0x7

    aput-object v18, v64, v65

    const/16 v65, 0x8

    aput-object v27, v64, v65

    const/16 v65, 0x9

    aput-object v24, v64, v65

    const/16 v65, 0xa

    aput-object v53, v64, v65

    const/16 v65, 0xb

    aput-object v22, v64, v65

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1341
    .end local v18           #endMonthDayString:Ljava/lang/String;
    .end local v20           #endMonthString:Ljava/lang/String;
    .end local v22           #endStandaloneMonthString:Ljava/lang/String;
    .end local v27           #endYearString:Ljava/lang/String;
    .end local v31           #index:I
    .end local v33           #monthFormat:Ljava/lang/String;
    .end local v40           #resId:I
    .end local v49           #startMonthDayString:Ljava/lang/String;
    .end local v51           #startMonthString:Ljava/lang/String;
    .end local v53           #startStandaloneMonthString:Ljava/lang/String;
    .end local v58           #startYearString:Ljava/lang/String;
    :cond_46
    if-eqz v4, :cond_47

    .line 1342
    const v64, 0x10400cf

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    .restart local v33       #monthFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1345
    .end local v33           #monthFormat:Ljava/lang/String;
    :cond_47
    const-string v33, "%B"

    .restart local v33       #monthFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1351
    .restart local v49       #startMonthDayString:Ljava/lang/String;
    .restart local v51       #startMonthString:Ljava/lang/String;
    .restart local v58       #startYearString:Ljava/lang/String;
    :cond_48
    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_25

    .line 1352
    .restart local v20       #endMonthString:Ljava/lang/String;
    :cond_49
    const-string v64, "%-d"

    move-object/from16 v0, v64

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_26

    .line 1353
    .restart local v18       #endMonthDayString:Ljava/lang/String;
    :cond_4a
    const-string v64, "%Y"

    move-object/from16 v0, v64

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_27

    .line 1387
    .restart local v22       #endStandaloneMonthString:Ljava/lang/String;
    .restart local v27       #endYearString:Ljava/lang/String;
    .restart local v53       #startStandaloneMonthString:Ljava/lang/String;
    :cond_4b
    move/from16 v0, v47

    move/from16 v1, v16

    if-eq v0, v1, :cond_50

    .line 1389
    const/16 v31, 0x0

    .line 1390
    .restart local v31       #index:I
    if-eqz v43, :cond_4c

    const/16 v31, 0x1

    .line 1391
    :cond_4c
    if-eqz v44, :cond_4d

    add-int/lit8 v31, v31, 0x2

    .line 1392
    :cond_4d
    if-eqz v42, :cond_4e

    add-int/lit8 v31, v31, 0x4

    .line 1393
    :cond_4e
    if-eqz v38, :cond_4f

    add-int/lit8 v31, v31, 0x8

    .line 1394
    :cond_4f
    sget-object v64, Landroid/text/format/DateUtils;->sameMonthTable:[I

    aget v40, v64, v31

    .line 1395
    .restart local v40       #resId:I
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1399
    const/16 v64, 0xc

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v56, v64, v65

    const/16 v65, 0x1

    aput-object v51, v64, v65

    const/16 v65, 0x2

    aput-object v49, v64, v65

    const/16 v65, 0x3

    aput-object v58, v64, v65

    const/16 v65, 0x4

    aput-object v55, v64, v65

    const/16 v65, 0x5

    aput-object v25, v64, v65

    const/16 v65, 0x6

    aput-object v20, v64, v65

    const/16 v65, 0x7

    aput-object v18, v64, v65

    const/16 v65, 0x8

    aput-object v27, v64, v65

    const/16 v65, 0x9

    aput-object v24, v64, v65

    const/16 v65, 0xa

    aput-object v53, v64, v65

    const/16 v65, 0xb

    aput-object v22, v64, v65

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1408
    .end local v31           #index:I
    .end local v40           #resId:I
    :cond_50
    and-int/lit8 v64, p6, 0x10

    if-eqz v64, :cond_54

    const/16 v41, 0x1

    .line 1411
    .local v41, showDate:Z
    :goto_28
    if-nez v42, :cond_51

    if-nez v41, :cond_51

    if-nez v43, :cond_51

    const/16 v41, 0x1

    .line 1414
    :cond_51
    const-string v60, ""

    .line 1415
    .local v60, timeString:Ljava/lang/String;
    if-eqz v42, :cond_52

    .line 1418
    if-eqz v32, :cond_55

    .line 1421
    move-object/from16 v60, v55

    .line 1431
    :cond_52
    :goto_29
    const-string v30, ""

    .line 1432
    const-string v11, ""

    .line 1433
    .local v11, dateString:Ljava/lang/String;
    if-eqz v41, :cond_59

    .line 1434
    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1435
    if-eqz v43, :cond_57

    .line 1436
    if-eqz v42, :cond_56

    .line 1438
    const v64, 0x10400bc

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1466
    :cond_53
    :goto_2a
    const/16 v64, 0x3

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v60, v64, v65

    const/16 v65, 0x1

    aput-object v56, v64, v65

    const/16 v65, 0x2

    aput-object v11, v64, v65

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1408
    .end local v11           #dateString:Ljava/lang/String;
    .end local v41           #showDate:Z
    .end local v60           #timeString:Ljava/lang/String;
    :cond_54
    const/16 v41, 0x0

    goto :goto_28

    .line 1424
    .restart local v41       #showDate:Z
    .restart local v60       #timeString:Ljava/lang/String;
    :cond_55
    const v64, 0x10400af

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 1426
    .local v59, timeFormat:Ljava/lang/String;
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v55, v64, v65

    const/16 v65, 0x1

    aput-object v24, v64, v65

    move-object/from16 v0, v59

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    goto :goto_29

    .line 1441
    .end local v59           #timeFormat:Ljava/lang/String;
    .restart local v11       #dateString:Ljava/lang/String;
    :cond_56
    const v64, 0x10400bd

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_2a

    .line 1444
    :cond_57
    if-eqz v42, :cond_58

    .line 1446
    const v64, 0x10400a7

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_2a

    .line 1449
    :cond_58
    const-string v64, "%s"

    const/16 v65, 0x1

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v11, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1452
    :cond_59
    if-eqz v43, :cond_5b

    .line 1453
    if-eqz v42, :cond_5a

    .line 1455
    const v64, 0x10400be

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_2a

    .line 1458
    :cond_5a
    const-string v64, "%s"

    const/16 v65, 0x1

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v56, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16

    .line 1460
    :cond_5b
    if-eqz v42, :cond_53

    .line 1461
    const-string v64, "%s"

    const/16 v65, 0x1

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v60, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v64

    goto/16 :goto_16
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    .line 1512
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(J)Ljava/lang/CharSequence;
    .locals 12
    .parameter "millis"

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 612
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 613
    .local v2, res:Landroid/content/res/Resources;
    cmp-long v4, p0, v10

    if-ltz v4, :cond_0

    .line 614
    const-wide/32 v4, 0x1b7740

    add-long/2addr v4, p0

    div-long/2addr v4, v10

    long-to-int v0, v4

    .line 615
    .local v0, hours:I
    const v4, 0x1130013

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 623
    .end local v0           #hours:I
    :goto_0
    return-object v4

    .line 617
    :cond_0
    cmp-long v4, p0, v6

    if-ltz v4, :cond_1

    .line 618
    const-wide/16 v4, 0x7530

    add-long/2addr v4, p0

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 619
    .local v1, minutes:I
    const v4, 0x1130012

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 622
    .end local v1           #minutes:I
    :cond_1
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, p0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 623
    .local v3, seconds:I
    const v4, 0x1130011

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .parameter "elapsedSeconds"

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 13
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    .line 647
    const-wide/16 v2, 0x0

    .line 648
    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 649
    .local v4, minutes:J
    const-wide/16 v7, 0x0

    .line 650
    .local v7, seconds:J
    const-wide/16 v9, 0xe10

    cmp-long v9, p1, v9

    if-ltz v9, :cond_0

    .line 651
    const-wide/16 v9, 0xe10

    div-long v2, p1, v9

    .line 652
    const-wide/16 v9, 0xe10

    mul-long/2addr v9, v2

    sub-long/2addr p1, v9

    .line 654
    :cond_0
    const-wide/16 v9, 0x3c

    cmp-long v9, p1, v9

    if-ltz v9, :cond_1

    .line 655
    const-wide/16 v9, 0x3c

    div-long v4, p1, v9

    .line 656
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v4

    sub-long/2addr p1, v9

    .line 658
    :cond_1
    move-wide v7, p1

    .line 662
    move-object v6, p0

    .line 663
    .local v6, sb:Ljava/lang/StringBuilder;
    if-nez v6, :cond_2

    .line 664
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #sb:Ljava/lang/StringBuilder;
    const/16 v9, 0x8

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 671
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :goto_0
    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v1, v6, v9}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 672
    .local v1, f:Ljava/util/Formatter;
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 673
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-lez v9, :cond_3

    .line 674
    sget-object v9, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 680
    :goto_1
    return-object v9

    .line 666
    .end local v1           #f:Ljava/util/Formatter;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 675
    .restart local v1       #f:Ljava/util/Formatter;
    :cond_3
    const-wide/16 v9, 0xa

    cmp-long v9, v4, v9

    if-gez v9, :cond_4

    .line 677
    const-string v0, "%1$d:%2$02d"

    .line 678
    .local v0, FAST_FORMAT_MMSS:Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v0, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 680
    .end local v0           #FAST_FORMAT_MMSS:Ljava/lang/String;
    :cond_4
    sget-object v9, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .parameter "then"
    .parameter "now"
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 703
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 704
    .local v2, thenCal:Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 705
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 706
    .local v3, thenDate:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 707
    .local v1, nowCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 711
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 714
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 718
    .local v0, f:Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 716
    .end local v0           #f:Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #f:Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 2
    .parameter "ampm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    add-int/lit8 v1, p0, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .parameter "dayOfWeek"
    .parameter "abbrev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 241
    .local v0, d:Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    .line 247
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .line 249
    .local v1, names:[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .line 242
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 243
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 245
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 246
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 283
    .local v0, d:Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    .line 289
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .line 291
    .local v1, names:[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .line 284
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 285
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 286
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 287
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 288
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static declared-synchronized getNumberOfDaysPassed(JJ)J
    .locals 6
    .parameter "date1"
    .parameter "date2"

    .prologue
    .line 464
    const-class v3, Landroid/text/format/DateUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 465
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 467
    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 468
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 469
    .local v0, day1:I
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 470
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 471
    .local v1, day2:I
    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v4, v2

    monitor-exit v3

    return-wide v4

    .line 464
    .end local v0           #day1:I
    .end local v1           #day2:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 19
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    .line 499
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 501
    .local v15, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 502
    .local v13, now:J
    sub-long v3, v13, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 507
    .local v11, duration:J
    const-wide/32 v3, 0x240c8400

    cmp-long v3, p5, v3

    if-lez v3, :cond_1

    .line 508
    const-wide/32 p5, 0x240c8400

    .line 513
    :cond_0
    :goto_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    .line 516
    .local v18, timeClause:Ljava/lang/CharSequence;
    cmp-long v3, v11, p5

    if-gez v3, :cond_2

    move-wide/from16 v3, p1

    move-wide v5, v13

    move-wide/from16 v7, p3

    move/from16 v9, p7

    .line 517
    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v16

    .line 518
    .local v16, relativeClause:Ljava/lang/CharSequence;
    const v3, 0x1040429

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 524
    .end local v16           #relativeClause:Ljava/lang/CharSequence;
    .local v17, result:Ljava/lang/String;
    :goto_1
    return-object v17

    .line 509
    .end local v17           #result:Ljava/lang/String;
    .end local v18           #timeClause:Ljava/lang/CharSequence;
    :cond_1
    const-wide/32 v3, 0x5265c00

    cmp-long v3, p5, v3

    if-gez v3, :cond_0

    .line 510
    const-wide/32 p5, 0x5265c00

    goto :goto_0

    .line 520
    .restart local v18       #timeClause:Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v10

    .line 521
    .local v10, dateClause:Ljava/lang/CharSequence;
    const v3, 0x10400a6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 14
    .parameter "r"
    .parameter "day"
    .parameter "today"

    .prologue
    .line 538
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 539
    .local v10, startTime:Landroid/text/format/Time;
    move-wide v0, p1

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 540
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 541
    .local v3, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 543
    iget-wide v11, v10, Landroid/text/format/Time;->gmtoff:J

    move-wide v0, p1

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 544
    .local v9, startDay:I
    iget-wide v11, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 546
    .local v2, currentDay:I
    sub-int v11, v2, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 547
    .local v4, days:I
    cmp-long v11, p3, p1

    if-lez v11, :cond_1

    const/4 v7, 0x1

    .line 550
    .local v7, past:Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v6, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 551
    .local v6, locale:Ljava/util/Locale;
    if-nez v6, :cond_0

    .line 552
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 554
    :cond_0
    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    .line 555
    if-eqz v7, :cond_2

    .line 556
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    .line 572
    :goto_1
    return-object v11

    .line 547
    .end local v6           #locale:Ljava/util/Locale;
    .end local v7           #past:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 558
    .restart local v6       #locale:Ljava/util/Locale;
    .restart local v7       #past:Z
    :cond_2
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->tomorrow:Ljava/lang/String;

    goto :goto_1

    .line 560
    :cond_3
    if-nez v4, :cond_4

    .line 561
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    goto :goto_1

    .line 565
    :cond_4
    if-eqz v7, :cond_5

    .line 566
    const v8, 0x1130004

    .line 571
    .local v8, resId:I
    :goto_2
    invoke-virtual {p0, v8, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, format:Ljava/lang/String;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 568
    .end local v5           #format:Ljava/lang/String;
    .end local v8           #resId:I
    :cond_5
    const v8, 0x1130008

    .restart local v8       #resId:I
    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .parameter "startTime"

    .prologue
    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 7
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"

    .prologue
    .line 352
    const v6, 0x10014

    .local v6, flags:I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 353
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 15
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"
    .parameter "flags"

    .prologue
    .line 378
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 379
    .local v13, r:Landroid/content/res/Resources;
    const/high16 v0, 0xc

    and-int v0, v0, p6

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    .line 381
    .local v6, abbrevRelative:Z
    :goto_0
    cmp-long v0, p2, p0

    if-ltz v0, :cond_1

    const/4 v12, 0x1

    .line 382
    .local v12, past:Z
    :goto_1
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 386
    .local v9, duration:J
    const-wide/32 v0, 0xea60

    cmp-long v0, v9, v0

    if-gez v0, :cond_5

    const-wide/32 v0, 0xea60

    cmp-long v0, p4, v0

    if-gez v0, :cond_5

    .line 387
    const-wide/16 v0, 0x3e8

    div-long v7, v9, v0

    .line 388
    .local v7, count:J
    if-eqz v12, :cond_3

    .line 389
    if-eqz v6, :cond_2

    .line 390
    const v14, 0x1130009

    .line 452
    .local v14, resId:I
    :goto_2
    long-to-int v0, v7

    invoke-virtual {v13, v14, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v11

    .line 453
    .local v11, format:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v7           #count:J
    .end local v11           #format:Ljava/lang/String;
    .end local v14           #resId:I
    :goto_3
    return-object v0

    .line 379
    .end local v6           #abbrevRelative:Z
    .end local v9           #duration:J
    .end local v12           #past:Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 381
    .restart local v6       #abbrevRelative:Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 392
    .restart local v7       #count:J
    .restart local v9       #duration:J
    .restart local v12       #past:Z
    :cond_2
    const/high16 v14, 0x113

    .restart local v14       #resId:I
    goto :goto_2

    .line 395
    .end local v14           #resId:I
    :cond_3
    if-eqz v6, :cond_4

    .line 396
    const v14, 0x113000d

    .restart local v14       #resId:I
    goto :goto_2

    .line 398
    .end local v14           #resId:I
    :cond_4
    const v14, 0x1130005

    .restart local v14       #resId:I
    goto :goto_2

    .line 401
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_5
    const-wide/32 v0, 0x36ee80

    cmp-long v0, v9, v0

    if-gez v0, :cond_9

    const-wide/32 v0, 0x36ee80

    cmp-long v0, p4, v0

    if-gez v0, :cond_9

    .line 402
    const-wide/32 v0, 0xea60

    div-long v7, v9, v0

    .line 403
    .restart local v7       #count:J
    if-eqz v12, :cond_7

    .line 404
    if-eqz v6, :cond_6

    .line 405
    const v14, 0x113000a

    .restart local v14       #resId:I
    goto :goto_2

    .line 407
    .end local v14           #resId:I
    :cond_6
    const v14, 0x1130001

    .restart local v14       #resId:I
    goto :goto_2

    .line 410
    .end local v14           #resId:I
    :cond_7
    if-eqz v6, :cond_8

    .line 411
    const v14, 0x113000e

    .restart local v14       #resId:I
    goto :goto_2

    .line 413
    .end local v14           #resId:I
    :cond_8
    const v14, 0x1130006

    .restart local v14       #resId:I
    goto :goto_2

    .line 416
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_9
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v9, v0

    if-gez v0, :cond_d

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p4, v0

    if-gez v0, :cond_d

    .line 417
    const-wide/32 v0, 0x36ee80

    div-long v7, v9, v0

    .line 418
    .restart local v7       #count:J
    if-eqz v12, :cond_b

    .line 419
    if-eqz v6, :cond_a

    .line 420
    const v14, 0x113000b

    .restart local v14       #resId:I
    goto :goto_2

    .line 422
    .end local v14           #resId:I
    :cond_a
    const v14, 0x1130002

    .restart local v14       #resId:I
    goto :goto_2

    .line 425
    .end local v14           #resId:I
    :cond_b
    if-eqz v6, :cond_c

    .line 426
    const v14, 0x113000f

    .restart local v14       #resId:I
    goto :goto_2

    .line 428
    .end local v14           #resId:I
    :cond_c
    const v14, 0x1130007

    .restart local v14       #resId:I
    goto :goto_2

    .line 431
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_d
    const-wide/32 v0, 0x240c8400

    cmp-long v0, v9, v0

    if-gez v0, :cond_11

    const-wide/32 v0, 0x240c8400

    cmp-long v0, p4, v0

    if-gez v0, :cond_11

    .line 432
    invoke-static/range {p0 .. p3}, Landroid/text/format/DateUtils;->getNumberOfDaysPassed(JJ)J

    move-result-wide v7

    .line 433
    .restart local v7       #count:J
    if-eqz v12, :cond_f

    .line 434
    if-eqz v6, :cond_e

    .line 435
    const v14, 0x113000c

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 437
    .end local v14           #resId:I
    :cond_e
    const v14, 0x1130004

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 440
    .end local v14           #resId:I
    :cond_f
    if-eqz v6, :cond_10

    .line 441
    const v14, 0x1130010

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 443
    .end local v14           #resId:I
    :cond_10
    const v14, 0x1130008

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 449
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_11
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p0

    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 1583
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 16
    .parameter "c"
    .parameter "millis"
    .parameter "withPreposition"

    .prologue
    .line 1533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1534
    .local v8, now:J
    sub-long v2, v8, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 1536
    .local v13, span:J
    const-class v15, Landroid/text/format/DateUtils;

    monitor-enter v15

    .line 1537
    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 1538
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 1541
    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_1

    .line 1542
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 1545
    :cond_1
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v2, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1546
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1549
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v13, v2

    if-gez v2, :cond_3

    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v3, :cond_3

    .line 1551
    const/4 v7, 0x1

    .local v7, flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1552
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1553
    .local v12, result:Ljava/lang/String;
    const v10, 0x104041b

    .line 1567
    .local v10, prepositionId:I
    :goto_0
    if-eqz p3, :cond_2

    .line 1568
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1569
    .local v11, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-virtual {v11, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1571
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_2
    monitor-exit v15

    .line 1572
    return-object v12

    .line 1554
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :cond_3
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-eq v2, v3, :cond_4

    .line 1556
    const v7, 0x20014

    .restart local v7       #flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1557
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1560
    .restart local v12       #result:Ljava/lang/String;
    const v10, 0x104041a

    .line 1561
    .restart local v10       #prepositionId:I
    goto :goto_0

    .line 1563
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :cond_4
    const v7, 0x10010

    .restart local v7       #flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1564
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1565
    .restart local v12       #result:Ljava/lang/String;
    const v10, 0x104041a

    .restart local v10       #prepositionId:I
    goto :goto_0

    .line 1571
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getStandaloneMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 317
    .local v0, d:Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    .line 324
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .line 326
    .local v1, names:[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .line 318
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    .line 319
    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 320
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 321
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 322
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 323
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 317
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static initFormatStrings()V
    .locals 2

    .prologue
    .line 576
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 577
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 578
    monitor-exit v1

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    .prologue
    .line 582
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 583
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 584
    .local v0, cfg:Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 585
    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 586
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    .line 587
    const v2, 0x104042e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 588
    const v2, 0x104042f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 590
    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6
    .parameter "when"

    .prologue
    .line 737
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 738
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 740
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 741
    .local v2, thenYear:I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 742
    .local v0, thenMonth:I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 744
    .local v1, thenMonthDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 745
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isUTC(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/16 v3, 0x5a

    const/4 v0, 0x1

    .line 757
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 764
    :cond_0
    :goto_0
    return v0

    .line 760
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 764
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCalendar(Z)Ljava/util/Calendar;
    .locals 1
    .parameter "zulu"

    .prologue
    .line 727
    if-eqz p0, :cond_0

    .line 728
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 730
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static final timeString(J)Ljava/lang/CharSequence;
    .locals 3
    .parameter "millis"

    .prologue
    .line 598
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 600
    sget-object v0, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static writeDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "cal"

    .prologue
    .line 778
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 779
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 780
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 781
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8
    .parameter "cal"
    .parameter "sb"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 821
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 822
    .local v0, n:I
    const/4 v1, 0x3

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 823
    div-int/lit8 v0, v0, 0xa

    .line 824
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 825
    div-int/lit8 v0, v0, 0xa

    .line 826
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 827
    div-int/lit8 v0, v0, 0xa

    .line 828
    const/4 v1, 0x0

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 830
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 831
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 832
    div-int/lit8 v0, v0, 0xa

    .line 833
    const/4 v1, 0x4

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 835
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 836
    const/4 v1, 0x7

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 837
    div-int/lit8 v0, v0, 0xa

    .line 838
    const/4 v1, 0x6

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 840
    const/16 v1, 0x8

    const/16 v2, 0x54

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 842
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 843
    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 844
    div-int/lit8 v0, v0, 0xa

    .line 845
    const/16 v1, 0x9

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 847
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 848
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 849
    div-int/lit8 v0, v0, 0xa

    .line 850
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 852
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 853
    const/16 v1, 0xe

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 854
    div-int/lit8 v0, v0, 0xa

    .line 855
    const/16 v1, 0xd

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 857
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 3
    .parameter "cal"
    .parameter "zulu"

    .prologue
    const/16 v1, 0x10

    const/16 v2, 0xf

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 798
    if-eqz p1, :cond_0

    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 800
    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 804
    :goto_0
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 802
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
