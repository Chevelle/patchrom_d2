.class public Lcom/miui/internal/app/ShutdownAlarm;
.super Ljava/lang/Object;
.source "ShutdownAlarm.java"


# static fields
.field private static final DM12:Ljava/lang/String; = "E h:mm aa"

.field private static final DM24:Ljava/lang/String; = "E kk:mm"

.field private static final TAG:Ljava/lang/String; = "ShutdownAlarm"

.field private static final WAKEALARM_PATH:Ljava/lang/String; = "/sys/class/rtc/rtc0/wakealarm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildShutdownAlarmCheckBox(Landroid/content/Context;)Landroid/widget/CheckBox;
    .locals 10
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x1

    .line 62
    invoke-static {}, Lcom/miui/internal/app/ShutdownAlarm;->readWakeAlarm()J

    move-result-wide v4

    mul-long v2, v4, v8

    .line 63
    .local v2, wakeAlarm:J
    sget-boolean v4, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v4, :cond_0

    .line 64
    const-string v4, "sys.power_off_alarm"

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    mul-long v2, v4, v8

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 67
    .local v1, shutAlarmCheckBox:Landroid/widget/CheckBox;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 68
    new-instance v1, Landroid/widget/CheckBox;

    .end local v1           #shutAlarmCheckBox:Landroid/widget/CheckBox;
    invoke-direct {v1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v1       #shutAlarmCheckBox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, sb:Ljava/lang/StringBuilder;
    const v5, 0x60c0208

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "E kk:mm"

    :goto_0
    invoke-static {v4, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const v4, 0x6060016

    invoke-static {p0, v2, v3, v4}, Lcom/miui/internal/app/ShutdownAlarm;->formatAlarm(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-object v1

    .line 71
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string v4, "E h:mm aa"

    goto :goto_0
.end method

.method private static formatAlarm(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 23
    .parameter "context"
    .parameter "timeInMillis"
    .parameter "arrayId"

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v6, p1, v19

    .line 85
    .local v6, delta:J
    const-wide/32 v19, 0x36ee80

    div-long v13, v6, v19

    .line 86
    .local v13, hours:J
    const-wide/32 v19, 0xea60

    div-long v19, v6, v19

    const-wide/16 v21, 0x3c

    rem-long v17, v19, v21

    .line 87
    .local v17, minutes:J
    const-wide/16 v19, 0x18

    div-long v4, v13, v19

    .line 88
    .local v4, days:J
    const-wide/16 v19, 0x18

    rem-long v13, v13, v19

    .line 90
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-nez v19, :cond_0

    const-string v3, ""

    .line 93
    .local v3, daySeq:Ljava/lang/String;
    :goto_0
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-nez v19, :cond_1

    const-string v16, ""

    .line 96
    .local v16, minSeq:Ljava/lang/String;
    :goto_1
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-nez v19, :cond_2

    const-string v12, ""

    .line 99
    .local v12, hourSeq:Ljava/lang/String;
    :goto_2
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_3

    const/4 v8, 0x1

    .line 100
    .local v8, dispDays:Z
    :goto_3
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-lez v19, :cond_4

    const/4 v9, 0x1

    .line 101
    .local v9, dispHour:Z
    :goto_4
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-lez v19, :cond_5

    const/4 v10, 0x1

    .line 103
    .local v10, dispMinute:Z
    :goto_5
    if-eqz v8, :cond_6

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_6
    if-eqz v9, :cond_7

    const/16 v19, 0x2

    :goto_7
    or-int v20, v20, v19

    if-eqz v10, :cond_8

    const/16 v19, 0x4

    :goto_8
    or-int v15, v20, v19

    .line 107
    .local v15, index:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, formats:[Ljava/lang/String;
    aget-object v19, v11, v15

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    aput-object v12, v20, v21

    const/16 v21, 0x2

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 90
    .end local v3           #daySeq:Ljava/lang/String;
    .end local v8           #dispDays:Z
    .end local v9           #dispHour:Z
    .end local v10           #dispMinute:Z
    .end local v11           #formats:[Ljava/lang/String;
    .end local v12           #hourSeq:Ljava/lang/String;
    .end local v15           #index:I
    .end local v16           #minSeq:Ljava/lang/String;
    :cond_0
    const v19, 0x60c0243

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 93
    .restart local v3       #daySeq:Ljava/lang/String;
    :cond_1
    const v19, 0x60c0245

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 96
    .restart local v16       #minSeq:Ljava/lang/String;
    :cond_2
    const v19, 0x60c0244

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 99
    .restart local v12       #hourSeq:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 100
    .restart local v8       #dispDays:Z
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 101
    .restart local v9       #dispHour:Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 103
    .restart local v10       #dispMinute:Z
    :cond_6
    const/16 v19, 0x0

    move/from16 v20, v19

    goto/16 :goto_6

    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_8
.end method

.method public static readWakeAlarm()J
    .locals 8

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .local v0, alarmTime:J
    const/4 v3, 0x0

    .line 33
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/rtc/rtc0/wakealarm"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 34
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v5

    int-to-long v0, v5

    .line 42
    if-eqz v4, :cond_0

    .line 44
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_0
    move-object v3, v4

    .line 50
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-wide v0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v5, "ShutdownAlarm"

    const-string v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    if-eqz v3, :cond_1

    .line 44
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 45
    :catch_1
    move-exception v2

    .line 46
    .local v2, e:Ljava/io/IOException;
    const-string v5, "ShutdownAlarm"

    const-string v6, "read wake alarm error"

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 37
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 38
    .local v2, e:Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_5
    const-string v5, "ShutdownAlarm"

    const-string v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 42
    if-eqz v3, :cond_1

    .line 44
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 45
    :catch_3
    move-exception v2

    .line 46
    .local v2, e:Ljava/io/IOException;
    const-string v5, "ShutdownAlarm"

    const-string v6, "read wake alarm error"

    goto :goto_3

    .line 39
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 40
    .restart local v2       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v5, "ShutdownAlarm"

    const-string v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 42
    if-eqz v3, :cond_1

    .line 44
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 45
    :catch_5
    move-exception v2

    .line 46
    const-string v5, "ShutdownAlarm"

    const-string v6, "read wake alarm error"

    goto :goto_3

    .line 42
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v3, :cond_2

    .line 44
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 42
    :cond_2
    :goto_7
    throw v5

    .line 45
    :catch_6
    move-exception v2

    .line 46
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "ShutdownAlarm"

    const-string v7, "read wake alarm error"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 45
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    .line 46
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "ShutdownAlarm"

    const-string v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 42
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 39
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 37
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 35
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static writeWakeAlarm(J)V
    .locals 2
    .parameter "timeInSeconds"

    .prologue
    .line 58
    const-string v0, "/sys/class/rtc/rtc0/wakealarm"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/os/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    return-void
.end method
