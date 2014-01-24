.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 33
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 35
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 37
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 45
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 47
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 49
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 51
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 53
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 55
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 57
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 59
    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 61
    const-wide/high16 v0, -0x4010

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 65
    const/high16 v0, 0x3f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 67
    const/high16 v0, -0x4080

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .parameter "str"

    .prologue
    .line 710
    if-nez p0, :cond_0

    .line 711
    const/4 v0, 0x0

    .line 717
    :goto_0
    return-object v0

    .line 714
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .parameter "str"

    .prologue
    .line 694
    if-nez p0, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 697
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .parameter "str"

    .prologue
    .line 643
    if-nez p0, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 646
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .parameter "str"

    .prologue
    .line 627
    if-nez p0, :cond_0

    .line 628
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "str"

    .prologue
    .line 660
    if-nez p0, :cond_0

    .line 661
    const/4 v0, 0x0

    .line 664
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "str"

    .prologue
    .line 678
    if-nez p0, :cond_0

    .line 679
    const/4 v0, 0x0

    .line 681
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 14
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 445
    if-nez p0, :cond_1

    .line 446
    const/4 v6, 0x0

    .line 590
    :cond_0
    :goto_0
    return-object v6

    .line 448
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 449
    new-instance v10, Ljava/lang/NumberFormatException;

    const-string v11, "A blank string is not a valid number"

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 451
    :cond_2
    const-string v10, "--"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 456
    const/4 v6, 0x0

    goto :goto_0

    .line 458
    :cond_3
    const-string v10, "0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "-0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "0X"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "-0X"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 459
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 461
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 465
    .local v7, lastChar:C
    const/16 v10, 0x2e

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 466
    .local v3, decPos:I
    const/16 v10, 0x65

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v11, 0x45

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x1

    .line 468
    .local v5, expPos:I
    const/4 v10, -0x1

    if-le v3, v10, :cond_9

    .line 470
    const/4 v10, -0x1

    if-le v5, v10, :cond_8

    .line 471
    if-lt v5, v3, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v5, v10, :cond_7

    .line 472
    :cond_6
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 474
    :cond_7
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, dec:Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 490
    .local v8, mant:Ljava/lang/String;
    :goto_2
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_14

    const/16 v10, 0x2e

    if-eq v7, v10, :cond_14

    .line 491
    const/4 v10, -0x1

    if-le v5, v10, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_c

    .line 492
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, exp:Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 498
    .local v9, numeric:Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v0, 0x1

    .line 499
    .local v0, allZeros:Z
    :goto_4
    sparse-switch v7, :sswitch_data_0

    .line 545
    :goto_5
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 476
    .end local v0           #allZeros:Z
    .end local v2           #dec:Ljava/lang/String;
    .end local v4           #exp:Ljava/lang/String;
    .end local v8           #mant:Ljava/lang/String;
    .end local v9           #numeric:Ljava/lang/String;
    :cond_8
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #dec:Ljava/lang/String;
    goto :goto_1

    .line 480
    .end local v2           #dec:Ljava/lang/String;
    :cond_9
    const/4 v10, -0x1

    if-le v5, v10, :cond_b

    .line 481
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v5, v10, :cond_a

    .line 482
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 484
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 488
    .restart local v8       #mant:Ljava/lang/String;
    :goto_6
    const/4 v2, 0x0

    .restart local v2       #dec:Ljava/lang/String;
    goto/16 :goto_2

    .line 486
    .end local v2           #dec:Ljava/lang/String;
    .end local v8           #mant:Ljava/lang/String;
    :cond_b
    move-object v8, p0

    .restart local v8       #mant:Ljava/lang/String;
    goto :goto_6

    .line 494
    .restart local v2       #dec:Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    .restart local v4       #exp:Ljava/lang/String;
    goto :goto_3

    .line 498
    .restart local v9       #numeric:Ljava/lang/String;
    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    .line 502
    .restart local v0       #allZeros:Z
    :sswitch_0
    if-nez v2, :cond_10

    .line 503
    if-nez v4, :cond_10

    .line 504
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_e

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    :cond_e
    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 506
    :cond_f
    :try_start_0
    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 507
    :catch_0
    move-exception v10

    .line 510
    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0

    .line 513
    :cond_10
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 517
    :sswitch_1
    :try_start_1
    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 518
    .local v6, f:Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    if-nez v0, :cond_0

    .line 531
    .end local v6           #f:Ljava/lang/Float;
    :cond_11
    :goto_7
    :sswitch_2
    :try_start_2
    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 532
    .local v1, d:Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    float-to-double v10, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_12

    if-eqz v0, :cond_13

    :cond_12
    move-object v6, v1

    .line 533
    goto/16 :goto_0

    .line 535
    .end local v1           #d:Ljava/lang/Double;
    :catch_1
    move-exception v10

    .line 539
    :cond_13
    :try_start_3
    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v6

    goto/16 :goto_0

    .line 551
    .end local v0           #allZeros:Z
    .end local v4           #exp:Ljava/lang/String;
    .end local v9           #numeric:Ljava/lang/String;
    :cond_14
    const/4 v10, -0x1

    if-le v5, v10, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_15

    .line 552
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 556
    .restart local v4       #exp:Ljava/lang/String;
    :goto_8
    if-nez v2, :cond_16

    if-nez v4, :cond_16

    .line 559
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v6

    goto/16 :goto_0

    .line 554
    .end local v4           #exp:Ljava/lang/String;
    :cond_15
    const/4 v4, 0x0

    .restart local v4       #exp:Ljava/lang/String;
    goto :goto_8

    .line 560
    :catch_2
    move-exception v10

    .line 564
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v6

    goto/16 :goto_0

    .line 565
    :catch_3
    move-exception v10

    .line 568
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0

    .line 572
    :cond_16
    invoke-static {v8}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    const/4 v0, 0x1

    .line 574
    .restart local v0       #allZeros:Z
    :goto_9
    :try_start_6
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 575
    .restart local v6       #f:Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_17

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    if-nez v0, :cond_0

    .line 582
    .end local v6           #f:Ljava/lang/Float;
    :cond_17
    :goto_a
    :try_start_7
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 583
    .restart local v1       #d:Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_18

    if-eqz v0, :cond_1a

    :cond_18
    move-object v6, v1

    .line 584
    goto/16 :goto_0

    .line 572
    .end local v0           #allZeros:Z
    .end local v1           #d:Ljava/lang/Double;
    :cond_19
    const/4 v0, 0x0

    goto :goto_9

    .line 586
    .restart local v0       #allZeros:Z
    :catch_4
    move-exception v10

    .line 590
    :cond_1a
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    goto/16 :goto_0

    .line 540
    .restart local v9       #numeric:Ljava/lang/String;
    :catch_5
    move-exception v10

    goto/16 :goto_5

    .line 578
    .end local v9           #numeric:Ljava/lang/String;
    :catch_6
    move-exception v10

    goto :goto_a

    .line 524
    .restart local v9       #numeric:Ljava/lang/String;
    :catch_7
    move-exception v10

    goto/16 :goto_7

    .line 499
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 605
    if-nez p0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v1

    .line 608
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_2

    .line 613
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 609
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 610
    goto :goto_0

    .line 608
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 1288
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return v1

    .line 1291
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 1296
    const/4 v1, 0x1

    goto :goto_0

    .line 1292
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 15
    .parameter "str"

    .prologue
    const/16 v14, 0x2d

    const/16 v13, 0x39

    const/16 v12, 0x30

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1313
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v2, v8

    .line 1411
    :cond_0
    :goto_0
    return v2

    .line 1316
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1317
    .local v1, chars:[C
    array-length v7, v1

    .line 1318
    .local v7, sz:I
    const/4 v4, 0x0

    .line 1319
    .local v4, hasExp:Z
    const/4 v3, 0x0

    .line 1320
    .local v3, hasDecPoint:Z
    const/4 v0, 0x0

    .line 1321
    .local v0, allowSigns:Z
    const/4 v2, 0x0

    .line 1323
    .local v2, foundDigit:Z
    aget-char v10, v1, v8

    if-ne v10, v14, :cond_2

    move v6, v9

    .line 1324
    .local v6, start:I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_9

    aget-char v10, v1, v6

    if-ne v10, v12, :cond_9

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_9

    .line 1325
    add-int/lit8 v5, v6, 0x2

    .line 1326
    .local v5, i:I
    if-ne v5, v7, :cond_8

    move v2, v8

    .line 1327
    goto :goto_0

    .end local v5           #i:I
    .end local v6           #start:I
    :cond_2
    move v6, v8

    .line 1323
    goto :goto_1

    .line 1331
    .restart local v5       #i:I
    .restart local v6       #start:I
    :cond_3
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_4

    aget-char v10, v1, v5

    if-le v10, v13, :cond_7

    .line 1332
    :cond_4
    aget-char v10, v1, v5

    const/16 v11, 0x61

    if-lt v10, v11, :cond_5

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-le v10, v11, :cond_7

    .line 1333
    :cond_5
    aget-char v10, v1, v5

    const/16 v11, 0x41

    if-lt v10, v11, :cond_6

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-le v10, v11, :cond_7

    :cond_6
    move v2, v8

    .line 1334
    goto :goto_0

    .line 1330
    :cond_7
    add-int/lit8 v5, v5, 0x1

    :cond_8
    array-length v10, v1

    if-lt v5, v10, :cond_3

    move v2, v9

    .line 1337
    goto :goto_0

    .line 1339
    .end local v5           #i:I
    :cond_9
    add-int/lit8 v7, v7, -0x1

    .line 1341
    move v5, v6

    .line 1344
    .restart local v5       #i:I
    :goto_2
    if-lt v5, v7, :cond_b

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_a

    if-eqz v0, :cond_a

    if-eqz v2, :cond_b

    .line 1377
    :cond_a
    array-length v10, v1

    if-ge v5, v10, :cond_20

    .line 1378
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_17

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_17

    move v2, v9

    .line 1380
    goto :goto_0

    .line 1345
    :cond_b
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_c

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_c

    .line 1346
    const/4 v2, 0x1

    .line 1347
    const/4 v0, 0x0

    .line 1375
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1349
    :cond_c
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_f

    .line 1350
    if-nez v3, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    move v2, v8

    .line 1352
    goto/16 :goto_0

    .line 1354
    :cond_e
    const/4 v3, 0x1

    goto :goto_3

    .line 1355
    :cond_f
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_10

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_13

    .line 1357
    :cond_10
    if-eqz v4, :cond_11

    move v2, v8

    .line 1359
    goto/16 :goto_0

    .line 1361
    :cond_11
    if-nez v2, :cond_12

    move v2, v8

    .line 1362
    goto/16 :goto_0

    .line 1364
    :cond_12
    const/4 v4, 0x1

    .line 1365
    const/4 v0, 0x1

    goto :goto_3

    .line 1366
    :cond_13
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_14

    aget-char v10, v1, v5

    if-ne v10, v14, :cond_16

    .line 1367
    :cond_14
    if-nez v0, :cond_15

    move v2, v8

    .line 1368
    goto/16 :goto_0

    .line 1370
    :cond_15
    const/4 v0, 0x0

    .line 1371
    const/4 v2, 0x0

    goto :goto_3

    :cond_16
    move v2, v8

    .line 1373
    goto/16 :goto_0

    .line 1382
    :cond_17
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_18

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_19

    :cond_18
    move v2, v8

    .line 1384
    goto/16 :goto_0

    .line 1386
    :cond_19
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_1b

    .line 1387
    if-nez v3, :cond_1a

    if-eqz v4, :cond_0

    :cond_1a
    move v2, v8

    .line 1389
    goto/16 :goto_0

    .line 1394
    :cond_1b
    if-nez v0, :cond_1c

    .line 1395
    aget-char v10, v1, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_0

    .line 1396
    aget-char v10, v1, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_0

    .line 1397
    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-eq v10, v11, :cond_0

    .line 1398
    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-eq v10, v11, :cond_0

    .line 1401
    :cond_1c
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_1d

    .line 1402
    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_1f

    .line 1404
    :cond_1d
    if-eqz v2, :cond_1e

    if-nez v4, :cond_1e

    if-nez v3, :cond_1e

    move v2, v9

    goto/16 :goto_0

    :cond_1e
    move v2, v8

    goto/16 :goto_0

    :cond_1f
    move v2, v8

    .line 1407
    goto/16 :goto_0

    .line 1411
    :cond_20
    if-nez v0, :cond_21

    if-eqz v2, :cond_21

    move v2, v9

    goto/16 :goto_0

    :cond_21
    move v2, v8

    goto/16 :goto_0
.end method

.method public static max(BBB)B
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1235
    if-le p1, p0, :cond_0

    .line 1236
    move p0, p1

    .line 1238
    :cond_0
    if-le p2, p0, :cond_1

    .line 1239
    move p0, p2

    .line 1241
    :cond_1
    return p0
.end method

.method public static max([B)B
    .locals 4
    .parameter "array"

    .prologue
    .line 985
    if-nez p0, :cond_0

    .line 986
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 987
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 988
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 992
    :cond_1
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 993
    .local v1, max:B
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 999
    return v1

    .line 994
    :cond_2
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_3

    .line 995
    aget-byte v1, p0, v0

    .line 993
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(DDD)D
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1257
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .locals 5
    .parameter "array"

    .prologue
    .line 1013
    if-nez p0, :cond_0

    .line 1014
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1015
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 1016
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1020
    :cond_1
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    .line 1021
    .local v1, max:D
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_2

    .line 1030
    .end local v1           #max:D
    :goto_1
    return-wide v1

    .line 1022
    .restart local v1       #max:D
    :cond_2
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1023
    const-wide/high16 v1, 0x7ff8

    goto :goto_1

    .line 1025
    :cond_3
    aget-wide v3, p0, v0

    cmpl-double v3, v3, v1

    if-lez v3, :cond_4

    .line 1026
    aget-wide v1, p0, v0

    .line 1021
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1273
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .locals 4
    .parameter "array"

    .prologue
    .line 1044
    if-nez p0, :cond_0

    .line 1045
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1046
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1047
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1051
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1052
    .local v1, max:F
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 1061
    .end local v1           #max:F
    :goto_1
    return v1

    .line 1053
    .restart local v1       #max:F
    :cond_2
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1054
    const/high16 v1, 0x7fc0

    goto :goto_1

    .line 1056
    :cond_3
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 1057
    aget v1, p0, v0

    .line 1052
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(III)I
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1199
    if-le p1, p0, :cond_0

    .line 1200
    move p0, p1

    .line 1202
    :cond_0
    if-le p2, p0, :cond_1

    .line 1203
    move p0, p2

    .line 1205
    :cond_1
    return p0
.end method

.method public static max([I)I
    .locals 4
    .parameter "array"

    .prologue
    .line 931
    if-nez p0, :cond_0

    .line 932
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 933
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 934
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 938
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 939
    .local v1, max:I
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 945
    return v1

    .line 940
    :cond_2
    aget v2, p0, v0

    if-le v2, v1, :cond_3

    .line 941
    aget v1, p0, v0

    .line 939
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(JJJ)J
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1181
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 1182
    move-wide p0, p2

    .line 1184
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 1185
    move-wide p0, p4

    .line 1187
    :cond_1
    return-wide p0
.end method

.method public static max([J)J
    .locals 5
    .parameter "array"

    .prologue
    .line 904
    if-nez p0, :cond_0

    .line 905
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 906
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 907
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 911
    :cond_1
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    .line 912
    .local v1, max:J
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_2

    .line 918
    return-wide v1

    .line 913
    :cond_2
    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-lez v3, :cond_3

    .line 914
    aget-wide v1, p0, v0

    .line 912
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(SSS)S
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1217
    if-le p1, p0, :cond_0

    .line 1218
    move p0, p1

    .line 1220
    :cond_0
    if-le p2, p0, :cond_1

    .line 1221
    move p0, p2

    .line 1223
    :cond_1
    return p0
.end method

.method public static max([S)S
    .locals 4
    .parameter "array"

    .prologue
    .line 958
    if-nez p0, :cond_0

    .line 959
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 960
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 961
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 965
    :cond_1
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 966
    .local v1, max:S
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 972
    return v1

    .line 967
    :cond_2
    aget-short v2, p0, v0

    if-le v2, v1, :cond_3

    .line 968
    aget-short v1, p0, v0

    .line 966
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(BBB)B
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1129
    if-ge p1, p0, :cond_0

    .line 1130
    move p0, p1

    .line 1132
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1133
    move p0, p2

    .line 1135
    :cond_1
    return p0
.end method

.method public static min([B)B
    .locals 4
    .parameter "array"

    .prologue
    .line 813
    if-nez p0, :cond_0

    .line 814
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 815
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 816
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 820
    :cond_1
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 821
    .local v1, min:B
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 827
    return v1

    .line 822
    :cond_2
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_3

    .line 823
    aget-byte v1, p0, v0

    .line 821
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(DDD)D
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1151
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .locals 5
    .parameter "array"

    .prologue
    .line 841
    if-nez p0, :cond_0

    .line 842
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 843
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 844
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 848
    :cond_1
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    .line 849
    .local v1, min:D
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_2

    .line 858
    .end local v1           #min:D
    :goto_1
    return-wide v1

    .line 850
    .restart local v1       #min:D
    :cond_2
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 851
    const-wide/high16 v1, 0x7ff8

    goto :goto_1

    .line 853
    :cond_3
    aget-wide v3, p0, v0

    cmpg-double v3, v3, v1

    if-gez v3, :cond_4

    .line 854
    aget-wide v1, p0, v0

    .line 849
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1167
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .locals 4
    .parameter "array"

    .prologue
    .line 872
    if-nez p0, :cond_0

    .line 873
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 874
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 875
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 879
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 880
    .local v1, min:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 889
    .end local v1           #min:F
    :goto_1
    return v1

    .line 881
    .restart local v1       #min:F
    :cond_2
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 882
    const/high16 v1, 0x7fc0

    goto :goto_1

    .line 884
    :cond_3
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_4

    .line 885
    aget v1, p0, v0

    .line 880
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(III)I
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1093
    if-ge p1, p0, :cond_0

    .line 1094
    move p0, p1

    .line 1096
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1097
    move p0, p2

    .line 1099
    :cond_1
    return p0
.end method

.method public static min([I)I
    .locals 4
    .parameter "array"

    .prologue
    .line 759
    if-nez p0, :cond_0

    .line 760
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 761
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 762
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 766
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 767
    .local v1, min:I
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 773
    return v1

    .line 768
    :cond_2
    aget v2, p0, v0

    if-ge v2, v1, :cond_3

    .line 769
    aget v1, p0, v0

    .line 767
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(JJJ)J
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1075
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 1076
    move-wide p0, p2

    .line 1078
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 1079
    move-wide p0, p4

    .line 1081
    :cond_1
    return-wide p0
.end method

.method public static min([J)J
    .locals 5
    .parameter "array"

    .prologue
    .line 732
    if-nez p0, :cond_0

    .line 733
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 734
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 735
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 739
    :cond_1
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    .line 740
    .local v1, min:J
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_2

    .line 746
    return-wide v1

    .line 741
    :cond_2
    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-gez v3, :cond_3

    .line 742
    aget-wide v1, p0, v0

    .line 740
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(SSS)S
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1111
    if-ge p1, p0, :cond_0

    .line 1112
    move p0, p1

    .line 1114
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1115
    move p0, p2

    .line 1117
    :cond_1
    return p0
.end method

.method public static min([S)S
    .locals 4
    .parameter "array"

    .prologue
    .line 786
    if-nez p0, :cond_0

    .line 787
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 788
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 789
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 793
    :cond_1
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 794
    .local v1, min:S
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 800
    return v1

    .line 795
    :cond_2
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_3

    .line 796
    aget-short v1, p0, v0

    .line 794
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1
    .parameter "str"

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 323
    if-nez p0, :cond_0

    .line 329
    .end local p1
    :goto_0
    return p1

    .line 327
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "str"

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 279
    .end local p1
    :goto_0
    return-wide p1

    .line 277
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1
    .parameter "str"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 227
    .end local p1
    :goto_0
    return p1

    .line 225
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .parameter "str"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 126
    .end local p1
    :goto_0
    return p1

    .line 124
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .parameter "str"

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 175
    .end local p1
    :goto_0
    return-wide p1

    .line 173
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1
    .parameter "str"

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 378
    .end local p1
    :goto_0
    return p1

    .line 376
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
