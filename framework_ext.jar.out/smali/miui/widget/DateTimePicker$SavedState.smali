.class Lmiui/widget/DateTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/widget/DateTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nTimeInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lmiui/widget/DateTimePicker$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/DateTimePicker$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    .line 327
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;J)V
    .locals 0
    .parameter "superState"
    .parameter "timeInMillis"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 317
    iput-wide p2, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    .line 318
    return-void
.end method


# virtual methods
.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 335
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 337
    iget-wide v0, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 338
    return-void
.end method
