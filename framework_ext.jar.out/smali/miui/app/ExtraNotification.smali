.class public Lmiui/app/ExtraNotification;
.super Ljava/lang/Object;
.source "ExtraNotification.java"


# static fields
.field public static final TYPE_ADVERTISEMENT:I = 0x1


# instance fields
.field public customizedIcon:Z

.field private enableFloat:Z

.field private floatTime:I

.field private targetPkg:Ljava/lang/CharSequence;

.field public traceContent:Ljava/lang/CharSequence;

.field public traceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xbb8

    iput v0, p0, Lmiui/app/ExtraNotification;->floatTime:I

    .line 42
    return-void
.end method

.method public static getLedPwmOffOn(I)[I
    .locals 3
    .parameter "totalLength"

    .prologue
    const/4 v2, 0x0

    .line 120
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 121
    .local v0, values:[I
    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    aput v1, v0, v2

    .line 122
    const/4 v1, 0x1

    aget v2, v0, v2

    sub-int v2, p0, v2

    aput v2, v0, v1

    .line 123
    return-object v0
.end method


# virtual methods
.method public getFloatTime()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lmiui/app/ExtraNotification;->floatTime:I

    return v0
.end method

.method public getTargetPkg()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/app/ExtraNotification;->targetPkg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEnableFloat()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lmiui/app/ExtraNotification;->enableFloat:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ExtraNotification;->customizedIcon:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/app/ExtraNotification;->traceType:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_1
    iput-boolean v1, p0, Lmiui/app/ExtraNotification;->enableFloat:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/app/ExtraNotification;->floatTime:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lmiui/app/ExtraNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 94
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 84
    goto :goto_0

    :cond_3
    move v1, v2

    .line 89
    goto :goto_1
.end method

.method public setCustomizedIcon(Z)Lmiui/app/ExtraNotification;
    .locals 0
    .parameter "customizedIcon"

    .prologue
    .line 73
    iput-boolean p1, p0, Lmiui/app/ExtraNotification;->customizedIcon:Z

    .line 74
    return-object p0
.end method

.method public setEnableFloat(Z)Lmiui/app/ExtraNotification;
    .locals 0
    .parameter "enable"

    .prologue
    .line 45
    iput-boolean p1, p0, Lmiui/app/ExtraNotification;->enableFloat:Z

    .line 46
    return-object p0
.end method

.method public setFloatTime(I)Lmiui/app/ExtraNotification;
    .locals 0
    .parameter "floatTime"

    .prologue
    .line 62
    if-lez p1, :cond_0

    .line 63
    iput p1, p0, Lmiui/app/ExtraNotification;->floatTime:I

    .line 65
    :cond_0
    return-object p0
.end method

.method public setTargetPkg(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "pkg"

    .prologue
    .line 50
    iput-object p1, p0, Lmiui/app/ExtraNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 51
    return-void
.end method

.method public setTo(Lmiui/app/ExtraNotification;)V
    .locals 1
    .parameter "extraNotification"

    .prologue
    .line 127
    iget v0, p1, Lmiui/app/ExtraNotification;->traceType:I

    iput v0, p0, Lmiui/app/ExtraNotification;->traceType:I

    .line 128
    iget-object v0, p1, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    iput-object v0, p0, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    .line 129
    iget-boolean v0, p1, Lmiui/app/ExtraNotification;->customizedIcon:Z

    iput-boolean v0, p0, Lmiui/app/ExtraNotification;->customizedIcon:Z

    .line 130
    iget-boolean v0, p1, Lmiui/app/ExtraNotification;->enableFloat:Z

    iput-boolean v0, p0, Lmiui/app/ExtraNotification;->enableFloat:Z

    .line 131
    iget v0, p1, Lmiui/app/ExtraNotification;->floatTime:I

    iput v0, p0, Lmiui/app/ExtraNotification;->floatTime:I

    .line 132
    iget-object v0, p1, Lmiui/app/ExtraNotification;->targetPkg:Ljava/lang/CharSequence;

    iput-object v0, p0, Lmiui/app/ExtraNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 133
    return-void
.end method

.method public setTrace(ILjava/lang/CharSequence;)Lmiui/app/ExtraNotification;
    .locals 0
    .parameter "type"
    .parameter "content"

    .prologue
    .line 78
    iput p1, p0, Lmiui/app/ExtraNotification;->traceType:I

    .line 79
    iput-object p2, p0, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    .line 80
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    iget-boolean v0, p0, Lmiui/app/ExtraNotification;->customizedIcon:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lmiui/app/ExtraNotification;->traceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lmiui/app/ExtraNotification;->traceContent:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 105
    :goto_1
    iget-boolean v0, p0, Lmiui/app/ExtraNotification;->enableFloat:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lmiui/app/ExtraNotification;->floatTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lmiui/app/ExtraNotification;->targetPkg:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lmiui/app/ExtraNotification;->targetPkg:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 113
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 105
    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
