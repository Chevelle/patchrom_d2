.class final Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
.super Ljava/lang/Object;
.source "ExtraTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ExtraTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TypedSimId"
.end annotation


# static fields
.field private static final SP:Ljava/lang/String; = ","

.field public static final TYPE_ICCID:I = 0x1

.field public static final TYPE_IMSI:I = 0x2

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public final type:I

.field public final value:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "value"

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput p1, p0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->type:I

    .line 510
    iput-object p2, p0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    .line 511
    return-void
.end method

.method static parse(Ljava/lang/String;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 552
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, parts:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    new-instance v1, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 556
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    invoke-direct {v1, v3, p0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 519
    if-ne p0, p1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v1

    .line 522
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 523
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 526
    check-cast v0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    .line 528
    .local v0, that:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    iget v3, p0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->type:I

    iget v4, v0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->type:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 529
    goto :goto_0

    .line 531
    :cond_4
    iget-object v3, p0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    iget-object v4, v0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 533
    goto :goto_0

    .line 531
    :cond_5
    iget-object v3, v0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 541
    iget v0, p0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->type:I

    .line 542
    .local v0, result:I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 543
    return v0

    .line 542
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toPlain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    invoke-virtual {p0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
