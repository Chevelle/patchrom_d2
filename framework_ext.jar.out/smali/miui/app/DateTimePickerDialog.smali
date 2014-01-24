.class public Lmiui/app/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lmiui/widget/DateTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/DateTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final SHOW_DESCRIPTION_DELAYED:I = 0x1f4


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mTimeInMillis:J

.field private mTimeListener:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

.field private mTimePicker:Lmiui/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/DateTimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;I)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "minuteInterval"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lmiui/app/DateTimePickerDialog;->mTimeListener:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    .line 46
    invoke-direct {p0, p3}, Lmiui/app/DateTimePickerDialog;->init(I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lmiui/app/DateTimePickerDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J

    return-wide v0
.end method

.method static synthetic access$100(Lmiui/app/DateTimePickerDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method private init(I)V
    .locals 6
    .parameter "minuteInterval"

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v2, Lmiui/app/DateTimePickerDialog$1;

    invoke-direct {v2, p0}, Lmiui/app/DateTimePickerDialog$1;-><init>(Lmiui/app/DateTimePickerDialog;)V

    iput-object v2, p0, Lmiui/app/DateTimePickerDialog;->mHandler:Landroid/os/Handler;

    .line 69
    const v2, 0x60c0271

    invoke-virtual {p0, v2}, Lmiui/app/DateTimePickerDialog;->setTitle(I)V

    .line 70
    const/4 v2, -0x1

    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p0}, Lmiui/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    const/4 v4, -0x2

    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x104

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v2}, Lmiui/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 77
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x603007d

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lmiui/app/DateTimePickerDialog;->setView(Landroid/view/View;)V

    .line 80
    const v2, 0x60b0109

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/app/DateTimePickerDialog;->mDescription:Landroid/widget/TextView;

    .line 81
    iget-object v2, p0, Lmiui/app/DateTimePickerDialog;->mDescription:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    const v2, 0x60b010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/DateTimePicker;

    iput-object v2, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    .line 83
    iget-object v2, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v2, p0}, Lmiui/widget/DateTimePicker;->setOnTimeChangedListener(Lmiui/widget/DateTimePicker$OnTimeChangedListener;)V

    .line 85
    iget-object v2, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v2}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J

    .line 86
    const/4 v2, 0x1

    if-eq v2, p1, :cond_0

    .line 87
    iget-object v2, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v2, p1}, Lmiui/widget/DateTimePicker;->setMinuteInterval(I)V

    .line 88
    iget-object v2, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    iget-wide v3, p0, Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J

    invoke-virtual {v2, v3, v4}, Lmiui/widget/DateTimePicker;->update(J)V

    .line 90
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lmiui/app/DateTimePickerDialog;->updateDescriptionDelayed(I)V

    .line 91
    return-void
.end method

.method private updateDescriptionDelayed(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 130
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 114
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimeListener:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimeListener:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    iget-wide v1, p0, Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J

    invoke-interface {v0, p0, v1, v2}, Lmiui/app/DateTimePickerDialog$OnTimeSetListener;->onTimeSet(Lmiui/app/DateTimePickerDialog;J)V

    .line 117
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/DateTimePickerDialog;->updateDescriptionDelayed(I)V

    .line 125
    return-void
.end method

.method public onTimeChanged(Lmiui/widget/DateTimePicker;J)V
    .locals 1
    .parameter "view"
    .parameter "timeInMillis"

    .prologue
    .line 107
    iput-wide p2, p0, Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J

    .line 109
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lmiui/app/DateTimePickerDialog;->updateDescriptionDelayed(I)V

    .line 110
    return-void
.end method

.method public update(J)V
    .locals 2
    .parameter "timeInMillis"

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->update(J)V

    .line 95
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/DateTimePickerDialog;->updateDescriptionDelayed(I)V

    .line 97
    return-void
.end method

.method public update(Landroid/text/format/Time;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 100
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1}, Lmiui/widget/DateTimePicker;->update(Landroid/text/format/Time;)V

    .line 101
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/DateTimePickerDialog;->updateDescriptionDelayed(I)V

    .line 103
    return-void
.end method
