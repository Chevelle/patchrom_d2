.class Lmiui/widget/DateTimePicker$DayFormatter;
.super Ljava/lang/Object;
.source "DateTimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DayFormatter"
.end annotation


# instance fields
.field private nCalendar:Ljava/util/Calendar;

.field final synthetic this$0:Lmiui/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Lmiui/widget/DateTimePicker;I)V
    .locals 1
    .parameter
    .parameter "year"

    .prologue
    .line 356
    iput-object p1, p0, Lmiui/widget/DateTimePicker$DayFormatter;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DateTimePicker$DayFormatter;->nCalendar:Ljava/util/Calendar;

    .line 358
    return-void
.end method

.method private getRelativeFutureDateSpanString(J)Ljava/lang/String;
    .locals 6
    .parameter "millis"

    .prologue
    .line 370
    iget-object v3, p0, Lmiui/widget/DateTimePicker$DayFormatter;->this$0:Lmiui/widget/DateTimePicker;

    iget-object v4, p0, Lmiui/widget/DateTimePicker$DayFormatter;->nCalendar:Ljava/util/Calendar;

    #calls: Lmiui/widget/DateTimePicker;->getDayOffset(Ljava/util/Calendar;J)I
    invoke-static {v3, v4, p1, p2}, Lmiui/widget/DateTimePicker;->access$200(Lmiui/widget/DateTimePicker;Ljava/util/Calendar;J)I

    move-result v0

    .line 372
    .local v0, dayOffset:I
    if-nez v0, :cond_0

    .line 374
    iget-object v3, p0, Lmiui/widget/DateTimePicker$DayFormatter;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$300(Lmiui/widget/DateTimePicker;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x60c0033

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 387
    :goto_0
    return-object v3

    .line 375
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 377
    iget-object v3, p0, Lmiui/widget/DateTimePicker$DayFormatter;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x60c0034

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 379
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    iget-object v3, p0, Lmiui/widget/DateTimePicker$DayFormatter;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$500(Lmiui/widget/DateTimePicker;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10018

    invoke-static {v3, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, dayText:Ljava/lang/String;
    iget-object v3, p0, Lmiui/widget/DateTimePicker$DayFormatter;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$600(Lmiui/widget/DateTimePicker;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x8002

    invoke-static {v3, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, weekText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 387
    .end local v1           #dayText:Ljava/lang/String;
    .end local v2           #weekText:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lmiui/widget/DateTimePicker$DayFormatter;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$700(Lmiui/widget/DateTimePicker;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1801a

    invoke-static {v3, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 362
    iget-object v0, p0, Lmiui/widget/DateTimePicker$DayFormatter;->nCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 363
    iget-object v0, p0, Lmiui/widget/DateTimePicker$DayFormatter;->nCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    iget-object v2, p0, Lmiui/widget/DateTimePicker$DayFormatter;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mStartYear:I
    invoke-static {v2}, Lmiui/widget/DateTimePicker;->access$100(Lmiui/widget/DateTimePicker;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 364
    iget-object v0, p0, Lmiui/widget/DateTimePicker$DayFormatter;->nCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 366
    iget-object v0, p0, Lmiui/widget/DateTimePicker$DayFormatter;->nCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker$DayFormatter;->getRelativeFutureDateSpanString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
