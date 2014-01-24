.class public Lmiui/util/MiuiDateUtils;
.super Ljava/lang/Object;
.source "MiuiDateUtils.java"


# static fields
.field private static final CHAR_BUFFER_CAPACITY:I = 0x40

.field private static final FORMAT_24_HOURS:Ljava/lang/String; = "HH:mm"

.field private static final mCharBufferPool:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Ljava/nio/CharBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTimePool:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Landroid/text/format/Time;",
            ">;"
        }
    .end annotation
.end field

.field private static sMonth:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lmiui/util/MiuiDateUtils$1;

    invoke-direct {v0}, Lmiui/util/MiuiDateUtils$1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lmiui/util/MiuiDateUtils;->mCharBufferPool:Lmiui/util/SimplePool$PoolInstance;

    .line 33
    new-instance v0, Lmiui/util/MiuiDateUtils$2;

    invoke-direct {v0}, Lmiui/util/MiuiDateUtils$2;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "time"
    .parameter "flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    sget-object v2, Lmiui/util/MiuiDateUtils;->mCharBufferPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    .line 170
    .local v0, cb:Ljava/nio/CharBuffer;
    invoke-static {p0, p1, p2, p3, v0}, Lmiui/util/MiuiDateUtils;->formatDateTime(Landroid/content/Context;JILjava/nio/CharBuffer;)V

    .line 171
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 172
    .local v1, resultString:Ljava/lang/String;
    sget-object v2, Lmiui/util/MiuiDateUtils;->mCharBufferPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2, v0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 173
    return-object v1
.end method

.method public static formatDateTime(Landroid/content/Context;JILjava/nio/CharBuffer;)V
    .locals 3
    .parameter "context"
    .parameter "time"
    .parameter "flags"
    .parameter "result"

    .prologue
    .line 184
    sget-object v2, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/format/Time;

    .line 185
    .local v0, tTime:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 186
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 187
    .local v1, use24Hour:Z
    invoke-static {p0, v0, p3, v1, p4}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    .line 188
    sget-object v2, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2, v0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 14
    .parameter "elapsedSeconds"

    .prologue
    const-wide/16 v6, 0xe10

    const-wide/16 v12, 0x3c

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 213
    div-long v0, p0, v6

    .line 214
    .local v0, hours:J
    mul-long/2addr v6, v0

    sub-long/2addr p0, v6

    .line 215
    div-long v2, p0, v12

    .line 216
    .local v2, minutes:J
    mul-long v6, v12, v2

    sub-long/2addr p0, v6

    .line 217
    move-wide v4, p0

    .line 218
    .local v4, seconds:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 219
    const-string v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 221
    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V
    .locals 10
    .parameter "context"
    .parameter "tTime"
    .parameter "flags"
    .parameter "use24Hour"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    .line 192
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 193
    .local v1, time:J
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    move v8, v9

    .line 194
    .local v8, showTime:Z
    :goto_0
    if-eqz v8, :cond_3

    .line 195
    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 196
    xor-int/lit8 v5, p2, 0x1

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 197
    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 199
    :cond_0
    new-instance v6, Lmiui/text/util/MiuiDateFormat;

    invoke-direct {v6}, Lmiui/text/util/MiuiDateFormat;-><init>()V

    .line 200
    .local v6, dateFormat:Lmiui/text/util/MiuiDateFormat;
    if-eqz p3, :cond_2

    .line 201
    const-string v0, "HH:mm"

    invoke-virtual {v6, v0}, Lmiui/text/util/MiuiDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 205
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v0}, Lmiui/text/util/MiuiDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, formatedTime:Ljava/lang/String;
    invoke-virtual {p4, v7}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 210
    .end local v6           #dateFormat:Lmiui/text/util/MiuiDateFormat;
    .end local v7           #formatedTime:Ljava/lang/String;
    :goto_2
    return-void

    .line 193
    .end local v8           #showTime:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 203
    .restart local v6       #dateFormat:Lmiui/text/util/MiuiDateFormat;
    .restart local v8       #showTime:Z
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x60c0147

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmiui/text/util/MiuiDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_1

    .end local v6           #dateFormat:Lmiui/text/util/MiuiDateFormat;
    :cond_3
    move-object v0, p0

    move-wide v3, v1

    move v5, p2

    .line 208
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZLjava/nio/CharBuffer;)V
    .locals 28
    .parameter "context"
    .parameter "time"
    .parameter "isNeedTimeAfterDate"
    .parameter "result"

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 50
    .local v20, now:J
    const-wide/32 v17, 0xea60

    .line 51
    .local v17, minResolution:J
    const/high16 v15, 0x8

    .line 53
    .local v15, flags:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v24

    .line 55
    .local v24, r:Landroid/content/res/Resources;
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0x60c017d

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x60c017c

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x60c0180

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x60c0179

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x60c0181

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x60c017f

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x60c017e

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const v6, 0x60c017a

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const v6, 0x60c0184

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const v6, 0x60c0183

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const v6, 0x60c0182

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const v6, 0x60c017b

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lmiui/util/MiuiDateUtils;->sMonth:[Ljava/lang/String;

    .line 70
    cmp-long v4, v20, p1

    if-ltz v4, :cond_2

    const/16 v23, 0x1

    .line 71
    .local v23, past:Z
    :goto_0
    sub-long v4, v20, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 73
    .local v13, duration:J
    sget-object v4, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v4}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/text/format/Time;

    .line 74
    .local v22, nowTime:Landroid/text/format/Time;
    sget-object v4, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v4}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/text/format/Time;

    .line 75
    .local v26, thenTime:Landroid/text/format/Time;
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 76
    move-object/from16 v0, v26

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 78
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v27

    .line 80
    .local v27, use24Hour:Z
    const/16 v25, -0x1

    .line 81
    .local v25, resId:I
    const-wide/32 v4, 0xea60

    div-long v10, v13, v4

    .line 82
    .local v10, count:J
    const-wide/16 v4, 0x3c

    cmp-long v4, v10, v4

    if-gtz v4, :cond_a

    .line 83
    if-eqz v23, :cond_6

    .line 84
    const-wide/16 v4, 0x3c

    cmp-long v4, v10, v4

    if-nez v4, :cond_3

    .line 86
    const v25, 0x6100001

    .line 150
    :cond_0
    :goto_1
    const/4 v4, -0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_1

    .line 151
    long-to-int v4, v10

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v16

    .line 152
    .local v16, format:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 155
    .end local v16           #format:Ljava/lang/String;
    :cond_1
    sget-object v4, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 156
    sget-object v4, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 157
    return-void

    .line 70
    .end local v10           #count:J
    .end local v13           #duration:J
    .end local v22           #nowTime:Landroid/text/format/Time;
    .end local v23           #past:Z
    .end local v25           #resId:I
    .end local v26           #thenTime:Landroid/text/format/Time;
    .end local v27           #use24Hour:Z
    :cond_2
    const/16 v23, 0x0

    goto :goto_0

    .line 87
    .restart local v10       #count:J
    .restart local v13       #duration:J
    .restart local v22       #nowTime:Landroid/text/format/Time;
    .restart local v23       #past:Z
    .restart local v25       #resId:I
    .restart local v26       #thenTime:Landroid/text/format/Time;
    .restart local v27       #use24Hour:Z
    :cond_3
    const-wide/16 v4, 0x1e

    cmp-long v4, v10, v4

    if-nez v4, :cond_4

    .line 89
    const v25, 0x6100002

    goto :goto_1

    .line 90
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_5

    .line 92
    const v25, 0x6100007

    goto :goto_1

    .line 94
    :cond_5
    const v25, 0x6100008

    goto :goto_1

    .line 97
    :cond_6
    const-wide/16 v4, 0x3c

    cmp-long v4, v10, v4

    if-nez v4, :cond_7

    .line 99
    const v25, 0x6100003

    goto :goto_1

    .line 100
    :cond_7
    const-wide/16 v4, 0x1e

    cmp-long v4, v10, v4

    if-nez v4, :cond_8

    .line 102
    const v25, 0x6100004

    goto :goto_1

    .line 103
    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_9

    .line 105
    const v25, 0x6100005

    goto :goto_1

    .line 107
    :cond_9
    const v25, 0x6100006

    goto :goto_1

    .line 110
    :cond_a
    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_b

    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->yearDay:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->yearDay:I

    if-ne v4, v5, :cond_b

    .line 113
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p4

    invoke-static {v0, v1, v4, v2, v3}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    goto/16 :goto_1

    .line 114
    :cond_b
    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_d

    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->yearDay:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->yearDay:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_d

    .line 117
    if-eqz v23, :cond_c

    .line 118
    const v4, 0x60c0039

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 119
    const-string v4, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 120
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p4

    invoke-static {v0, v1, v4, v2, v3}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    goto/16 :goto_1

    .line 122
    :cond_c
    const v4, 0x60c0034

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 123
    const-string v4, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 124
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p4

    invoke-static {v0, v1, v4, v2, v3}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    goto/16 :goto_1

    .line 126
    :cond_d
    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_e

    invoke-virtual/range {v22 .. v22}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v4

    invoke-virtual/range {v26 .. v26}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v5

    if-ne v4, v5, :cond_e

    .line 130
    const v9, 0x80002

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p1

    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 131
    const-string v4, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 132
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p4

    invoke-static {v0, v1, v4, v2, v3}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    goto/16 :goto_1

    .line 133
    :cond_e
    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_f

    .line 135
    sget-object v4, Lmiui/util/MiuiDateUtils;->sMonth:[Ljava/lang/String;

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->month:I

    aget-object v19, v4, v5

    .line 136
    .local v19, month:Ljava/lang/String;
    const v4, 0x60c012e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    iget v7, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 137
    .local v12, day:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 138
    if-eqz p3, :cond_0

    .line 139
    const-string v4, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 140
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p4

    invoke-static {v0, v1, v4, v2, v3}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    goto/16 :goto_1

    .line 143
    .end local v12           #day:Ljava/lang/String;
    .end local v19           #month:Ljava/lang/String;
    :cond_f
    const v9, 0x80014

    .line 144
    .local v9, overYearFlag:I
    if-eqz p3, :cond_10

    .line 145
    or-int/lit8 v9, v9, 0x1

    :cond_10
    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p1

    .line 147
    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    goto/16 :goto_1
.end method
