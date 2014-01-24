.class public Lmiui/util/LunarDate$BirthHoroscope;
.super Ljava/lang/Object;
.source "LunarDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LunarDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthHoroscope"
.end annotation


# static fields
.field private static final BASE_DATE_STRING:Ljava/lang/String; = "1900-1-31"

.field private static final DAY_IN_MILLS:J = 0x5265c00L

.field private static sBaseDate:Ljava/util/Date;

.field private static final sChineseDateFormat:Ljava/text/SimpleDateFormat;

.field private static sDiZhi:[Ljava/lang/String;

.field private static sIsInitialized:Z

.field private static sJiaZi:[Ljava/lang/String;

.field private static sTianGan:[Ljava/lang/String;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mDay:I

.field private mHour:I

.field private mMonth:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1093
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;IIII)V
    .locals 0
    .parameter "c"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"

    .prologue
    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    iput-object p1, p0, Lmiui/util/LunarDate$BirthHoroscope;->mCalendar:Ljava/util/Calendar;

    .line 1112
    iput p2, p0, Lmiui/util/LunarDate$BirthHoroscope;->mYear:I

    .line 1113
    iput p3, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    .line 1114
    iput p4, p0, Lmiui/util/LunarDate$BirthHoroscope;->mDay:I

    .line 1115
    iput p5, p0, Lmiui/util/LunarDate$BirthHoroscope;->mHour:I

    .line 1116
    return-void
.end method

.method private static getLunarHourIndex(I)I
    .locals 1
    .parameter "hour"

    .prologue
    .line 1266
    add-int/lit8 v0, p0, 0x1

    rem-int/lit8 v0, v0, 0x18

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static newInstance(Landroid/content/res/Resources;Ljava/util/Calendar;)Lmiui/util/LunarDate$BirthHoroscope;
    .locals 20
    .parameter "res"
    .parameter "calendar"

    .prologue
    .line 1120
    :try_start_0
    sget-boolean v1, Lmiui/util/LunarDate$BirthHoroscope;->sIsInitialized:Z

    if-nez v1, :cond_0

    .line 1121
    const v1, 0x6060019

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    .line 1122
    const v1, 0x606001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    .line 1123
    const v1, 0x606001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    .line 1124
    sget-object v1, Lmiui/util/LunarDate$BirthHoroscope;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v2, "1900-1-31"

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    .line 1125
    const/4 v1, 0x1

    sput-boolean v1, Lmiui/util/LunarDate$BirthHoroscope;->sIsInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :cond_0
    const/4 v14, 0x0

    .line 1136
    .local v14, leapMonth:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-object v18, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    sub-long v1, v1, v18

    const-wide/32 v18, 0x5265c00

    div-long v1, v1, v18

    long-to-int v8, v1

    .line 1137
    .local v8, dayOffset:I
    add-int/lit8 v15, v8, 0x28

    .line 1138
    .local v15, lunarDay:I
    const/16 v16, 0xe

    .line 1142
    .local v16, lunarMonth:I
    const/4 v7, 0x0

    .line 1143
    .local v7, dayOfYear:I
    const/16 v12, 0x76c

    .local v12, iYear:I
    :goto_0
    const/16 v1, 0x802

    if-ge v12, v1, :cond_1

    if-lez v8, :cond_1

    .line 1144
    #calls: Lmiui/util/LunarDate;->yrDays(I)I
    invoke-static {v12}, Lmiui/util/LunarDate;->access$000(I)I

    move-result v7

    .line 1145
    sub-int/2addr v8, v7

    .line 1146
    add-int/lit8 v16, v16, 0xc

    .line 1143
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1127
    .end local v7           #dayOfYear:I
    .end local v8           #dayOffset:I
    .end local v12           #iYear:I
    .end local v14           #leapMonth:I
    .end local v15           #lunarDay:I
    .end local v16           #lunarMonth:I
    :catch_0
    move-exception v10

    .line 1128
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1129
    const/4 v1, 0x0

    .line 1203
    .end local v10           #e:Ljava/lang/Exception;
    :goto_1
    return-object v1

    .line 1149
    .restart local v7       #dayOfYear:I
    .restart local v8       #dayOffset:I
    .restart local v12       #iYear:I
    .restart local v14       #leapMonth:I
    .restart local v15       #lunarDay:I
    .restart local v16       #lunarMonth:I
    :cond_1
    if-gez v8, :cond_2

    .line 1150
    add-int/2addr v8, v7

    .line 1151
    add-int/lit8 v12, v12, -0x1

    .line 1152
    add-int/lit8 v16, v16, -0xc

    .line 1156
    :cond_2
    move v3, v12

    .line 1157
    .local v3, year:I
    add-int/lit16 v0, v12, -0x748

    move/from16 v17, v0

    .line 1158
    .local v17, lunarYear:I
    invoke-static {v12}, Lmiui/util/LunarDate;->rMonth(I)I

    move-result v14

    .line 1159
    const/4 v13, 0x0

    .line 1162
    .local v13, isLeapYear:Z
    const/4 v9, 0x0

    .line 1163
    .local v9, daysOfMonth:I
    const/4 v11, 0x1

    .local v11, iMonth:I
    :goto_2
    const/16 v1, 0xd

    if-ge v11, v1, :cond_6

    if-lez v8, :cond_6

    .line 1165
    if-lez v14, :cond_5

    add-int/lit8 v1, v14, 0x1

    if-ne v11, v1, :cond_5

    if-nez v13, :cond_5

    .line 1166
    add-int/lit8 v11, v11, -0x1

    .line 1167
    const/4 v13, 0x1

    .line 1168
    invoke-static {v3}, Lmiui/util/LunarDate;->rMthDays(I)I

    move-result v9

    .line 1172
    :goto_3
    sub-int/2addr v8, v9

    .line 1174
    if-eqz v13, :cond_3

    add-int/lit8 v1, v14, 0x1

    if-ne v11, v1, :cond_3

    .line 1175
    const/4 v13, 0x0

    .line 1177
    :cond_3
    if-nez v13, :cond_4

    .line 1178
    add-int/lit8 v16, v16, 0x1

    .line 1163
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1170
    :cond_5
    invoke-static {v3, v11}, Lmiui/util/LunarDate;->mthDays(II)I

    move-result v9

    goto :goto_3

    .line 1183
    :cond_6
    if-nez v8, :cond_7

    if-lez v14, :cond_7

    add-int/lit8 v1, v14, 0x1

    if-ne v11, v1, :cond_7

    .line 1184
    if-eqz v13, :cond_9

    .line 1185
    const/4 v13, 0x0

    .line 1194
    :cond_7
    :goto_4
    if-gez v8, :cond_8

    .line 1195
    add-int/2addr v8, v9

    .line 1196
    add-int/lit8 v11, v11, -0x1

    .line 1197
    add-int/lit8 v16, v16, -0x1

    .line 1200
    :cond_8
    move v4, v11

    .line 1201
    .local v4, month:I
    add-int/lit8 v5, v8, 0x1

    .line 1202
    .local v5, day:I
    const/16 v1, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1203
    .local v6, hour:I
    new-instance v1, Lmiui/util/LunarDate$BirthHoroscope;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lmiui/util/LunarDate$BirthHoroscope;-><init>(Ljava/util/Calendar;IIII)V

    goto :goto_1

    .line 1187
    .end local v4           #month:I
    .end local v5           #day:I
    .end local v6           #hour:I
    :cond_9
    const/4 v13, 0x1

    .line 1188
    add-int/lit8 v11, v11, -0x1

    .line 1189
    add-int/lit8 v16, v16, -0x1

    goto :goto_4
.end method


# virtual methods
.method public getBirthHoroscope()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1208
    iget v9, p0, Lmiui/util/LunarDate$BirthHoroscope;->mYear:I

    add-int/lit16 v9, v9, -0x748

    rem-int/lit8 v8, v9, 0x3c

    .line 1210
    .local v8, yearOffset:I
    sget-object v9, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    aget-object v7, v9, v8

    .line 1212
    .local v7, year:Ljava/lang/String;
    rem-int/lit8 v8, v8, 0x5

    .line 1221
    add-int/lit8 v9, v8, 0x1

    mul-int/lit8 v6, v9, 0x2

    .line 1222
    .local v6, monthOffset:I
    const/16 v9, 0xa

    if-ne v6, v9, :cond_0

    .line 1223
    const/4 v6, 0x0

    .line 1225
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    iget v11, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    add-int/2addr v11, v6

    add-int/lit8 v11, v11, -0x1

    rem-int/lit8 v11, v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    iget v11, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x1

    rem-int/lit8 v11, v11, 0xc

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1233
    .local v5, month:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/util/LunarDate$BirthHoroscope;->getRiZhu()I

    move-result v1

    .line 1234
    .local v1, dayOffset:I
    sget-object v9, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    aget-object v0, v9, v1

    .line 1243
    .local v0, day:Ljava/lang/String;
    rem-int/lit8 v9, v1, 0x5

    mul-int/lit8 v3, v9, 0x2

    .line 1244
    .local v3, hourOffset:I
    iget v9, p0, Lmiui/util/LunarDate$BirthHoroscope;->mHour:I

    invoke-static {v9}, Lmiui/util/LunarDate$BirthHoroscope;->getLunarHourIndex(I)I

    move-result v4

    .line 1245
    .local v4, lunarHourIndex:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    add-int v11, v3, v4

    rem-int/lit8 v11, v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1248
    .local v2, hour:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public getRiZhu()I
    .locals 5

    .prologue
    .line 1275
    iget-object v1, p0, Lmiui/util/LunarDate$BirthHoroscope;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-object v3, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 1276
    .local v0, dayOffset:I
    add-int/lit8 v1, v0, 0x28

    sget-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 1277
    return v0
.end method
