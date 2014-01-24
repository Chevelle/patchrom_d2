.class public Lmiui/widget/PictureClock;
.super Landroid/widget/LinearLayout;
.source "PictureClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/PictureClock$FormatChangeObserver;,
        Lmiui/widget/PictureClock$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"


# instance fields
.field private mAmPm:Lmiui/widget/PictureClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Lmiui/widget/ImageTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/PictureClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lmiui/widget/PictureClock$1;

    invoke-direct {v0, p0}, Lmiui/widget/PictureClock$1;-><init>(Lmiui/widget/PictureClock;)V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/PictureClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lmiui/widget/PictureClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/widget/PictureClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/widget/PictureClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/PictureClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/PictureClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/widget/PictureClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lmiui/widget/PictureClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lmiui/widget/PictureClock;->mFormat:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    const-string v1, "hh:mm"

    iget-object v2, p0, Lmiui/widget/PictureClock;->mFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/PictureClock$AmPm;->setShowAmPm(Z)V

    .line 186
    return-void

    .line 184
    :cond_0
    const-string v0, "hh:mm"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 174
    iget-boolean v1, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 178
    :cond_0
    iget-object v1, p0, Lmiui/widget/PictureClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 179
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lmiui/widget/PictureClock;->mTimeDisplay:Lmiui/widget/ImageTextView;

    invoke-virtual {v1, v0}, Lmiui/widget/ImageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    iget-object v1, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lmiui/widget/PictureClock$AmPm;->setIsMorning(Z)V

    .line 181
    return-void

    .line 180
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 131
    iget-boolean v1, p0, Lmiui/widget/PictureClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/widget/PictureClock;->mAttached:Z

    .line 134
    iget-boolean v1, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lmiui/widget/PictureClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lmiui/widget/PictureClock$FormatChangeObserver;-><init>(Lmiui/widget/PictureClock;)V

    iput-object v1, p0, Lmiui/widget/PictureClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 145
    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/widget/PictureClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    invoke-direct {p0}, Lmiui/widget/PictureClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 157
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->mAttached:Z

    .line 160
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/PictureClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 120
    const v0, 0x60b0094

    invoke-virtual {p0, v0}, Lmiui/widget/PictureClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ImageTextView;

    iput-object v0, p0, Lmiui/widget/PictureClock;->mTimeDisplay:Lmiui/widget/ImageTextView;

    .line 121
    new-instance v0, Lmiui/widget/PictureClock$AmPm;

    invoke-direct {v0, p0}, Lmiui/widget/PictureClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    .line 124
    invoke-direct {p0}, Lmiui/widget/PictureClock;->setDateFormat()V

    .line 125
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 189
    iput-boolean p1, p0, Lmiui/widget/PictureClock;->mLive:Z

    .line 190
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 169
    iput-object p1, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    .line 170
    invoke-direct {p0}, Lmiui/widget/PictureClock;->updateTime()V

    .line 171
    return-void
.end method
