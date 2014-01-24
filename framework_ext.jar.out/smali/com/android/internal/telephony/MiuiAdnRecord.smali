.class public Lcom/android/internal/telephony/MiuiAdnRecord;
.super Lcom/android/internal/telephony/AdnRecord;
.source "MiuiAdnRecord.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/MiuiAdnRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field anr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/android/internal/telephony/MiuiAdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/MiuiAdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MiuiAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->anr:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->anr:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "data"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->anr:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"

    .prologue
    const/4 v1, 0x0

    .line 31
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public buildAdnString(I)[B
    .locals 9
    .parameter "recordSize"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 86
    add-int/lit8 v2, p1, -0xe

    .line 89
    .local v2, footerOffset:I
    new-array v0, p1, [B

    .line 90
    .local v0, adnString:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 91
    aput-byte v7, v0, v3

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiAdnRecord;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    .end local v0           #adnString:[B
    :cond_1
    :goto_1
    return-object v0

    .line 96
    .restart local v0       #adnString:[B
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->number:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_3

    .line 98
    const-string v5, "GSM"

    const-string v6, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_4

    .line 102
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildAdnString] Max length of tag is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 104
    goto :goto_1

    .line 106
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 107
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 109
    .local v1, bcdNumber:[B
    add-int/lit8 v4, v2, 0x1

    array-length v5, v1

    invoke-static {v1, v8, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    add-int/lit8 v4, v2, 0x0

    array-length v5, v1

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 113
    add-int/lit8 v4, v2, 0xc

    aput-byte v7, v0, v4

    .line 115
    add-int/lit8 v4, v2, 0xd

    aput-byte v7, v0, v4

    .line 121
    .end local v1           #bcdNumber:[B
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Lcom/android/internal/telephony/MiuiAdnUtils;->encodeAlphaTag([BLjava/lang/String;I)Z

    goto :goto_1

    .line 118
    :cond_5
    add-int/lit8 v4, v2, 0x0

    aput-byte v8, v0, v4

    goto :goto_2
.end method

.method public getAnr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->anr:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->anr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MiuiAdnRecord;->callStringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MiuiAdnRecord;->callStringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .parameter "alphaTag"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->alphaTag:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->anr:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->number:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiAdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
