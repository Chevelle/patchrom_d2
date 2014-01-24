.class public Lorg/apache/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z = null

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean; = null

.field public static final EMPTY_BYTE_ARRAY:[B = null

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte; = null

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character; = null

.field public static final EMPTY_CHAR_ARRAY:[C = null

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D = null

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double; = null

.field public static final EMPTY_FLOAT_ARRAY:[F = null

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float; = null

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer; = null

.field public static final EMPTY_INT_ARRAY:[I = null

.field public static final EMPTY_LONG_ARRAY:[J = null

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long; = null

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object; = null

.field public static final EMPTY_SHORT_ARRAY:[S = null

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short; = null

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 53
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 57
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 61
    new-array v0, v1, [J

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 65
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 69
    new-array v0, v1, [I

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 73
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 77
    new-array v0, v1, [S

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 81
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 85
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 89
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 93
    new-array v0, v1, [D

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 97
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 101
    new-array v0, v1, [F

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 105
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 109
    new-array v0, v1, [Z

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 113
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 117
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 121
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter "array"
    .parameter "index"
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p3, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 4293
    if-nez p0, :cond_1

    .line 4294
    if-eqz p1, :cond_0

    .line 4295
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Length: 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4297
    :cond_0
    const/4 v3, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4298
    .local v0, joinedArray:Ljava/lang/Object;
    invoke-static {v0, v4, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4311
    .end local v0           #joinedArray:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 4301
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 4302
    .local v1, length:I
    if-gt p1, v1, :cond_2

    if-gez p1, :cond_3

    .line 4303
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4305
    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 4306
    .local v2, result:Ljava/lang/Object;
    invoke-static {p0, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4307
    invoke-static {v2, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4308
    if-ge p1, v1, :cond_4

    .line 4309
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    invoke-static {p0, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v0, v2

    .line 4311
    goto :goto_0
.end method

.method public static add([BB)[B
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 3802
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3803
    .local v0, newArray:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 3804
    return-object v0
.end method

.method public static add([BIB)[B
    .locals 2
    .parameter "array"
    .parameter "index"
    .parameter "element"

    .prologue
    .line 4123
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 3829
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 3830
    .local v0, newArray:[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 3831
    return-object v0
.end method

.method public static add([CIC)[C
    .locals 2
    .parameter "array"
    .parameter "index"
    .parameter "element"

    .prologue
    .line 4092
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 3856
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 3857
    .local v0, newArray:[D
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3858
    return-object v0
.end method

.method public static add([DID)[D
    .locals 2
    .parameter "array"
    .parameter "index"
    .parameter "element"

    .prologue
    .line 4278
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 3883
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 3884
    .local v0, newArray:[F
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3885
    return-object v0
.end method

.method public static add([FIF)[F
    .locals 2
    .parameter "array"
    .parameter "index"
    .parameter "element"

    .prologue
    .line 4247
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 3910
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3911
    .local v0, newArray:[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3912
    return-object v0
.end method

.method public static add([III)[I
    .locals 2
    .parameter "array"
    .parameter "index"
    .parameter "element"

    .prologue
    .line 4185
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .locals 2
    .parameter "array"
    .parameter "index"
    .parameter "element"

    .prologue
    .line 4216
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 3937
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 3938
    .local v0, newArray:[J
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3939
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter "array"
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .line 4019
    .local p2, element:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .line 4020
    .local v0, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 4021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4028
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 4029
    .local v1, newArray:[Ljava/lang/Object;
    return-object v1

    .line 4022
    .end local v1           #newArray:[Ljava/lang/Object;
    :cond_0
    if-eqz p2, :cond_1

    .line 4023
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 4025
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array and element cannot both be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 3740
    .local p1, element:Ljava/lang/Object;,"TT;"
    if-eqz p0, :cond_0

    .line 3741
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3748
    .local v1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 3749
    .local v0, newArray:[Ljava/lang/Object;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v0, v2

    .line 3750
    return-object v0

    .line 3742
    .end local v0           #newArray:[Ljava/lang/Object;
    .end local v1           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-eqz p1, :cond_1

    .line 3743
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 3745
    .end local v1           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Arguments cannot both be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add([SIS)[S
    .locals 2
    .parameter "array"
    .parameter "index"
    .parameter "element"

    .prologue
    .line 4154
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 3964
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 3965
    .local v0, newArray:[S
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 3966
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .locals 2
    .parameter "array"
    .parameter "index"
    .parameter "element"

    .prologue
    .line 4060
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 3775
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 3776
    .local v0, newArray:[Z
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 3777
    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .locals 4
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x0

    .line 3553
    if-nez p0, :cond_0

    .line 3554
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 3561
    :goto_0
    return-object v0

    .line 3555
    :cond_0
    if-nez p1, :cond_1

    .line 3556
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 3558
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 3559
    .local v0, joinedArray:[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3560
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([C[C)[C
    .locals 4
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x0

    .line 3524
    if-nez p0, :cond_0

    .line 3525
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 3532
    :goto_0
    return-object v0

    .line 3526
    :cond_0
    if-nez p1, :cond_1

    .line 3527
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_0

    .line 3529
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 3530
    .local v0, joinedArray:[C
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3531
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([D[D)[D
    .locals 4
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x0

    .line 3698
    if-nez p0, :cond_0

    .line 3699
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 3706
    :goto_0
    return-object v0

    .line 3700
    :cond_0
    if-nez p1, :cond_1

    .line 3701
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_0

    .line 3703
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [D

    .line 3704
    .local v0, joinedArray:[D
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3705
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([F[F)[F
    .locals 4
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x0

    .line 3669
    if-nez p0, :cond_0

    .line 3670
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 3677
    :goto_0
    return-object v0

    .line 3671
    :cond_0
    if-nez p1, :cond_1

    .line 3672
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_0

    .line 3674
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [F

    .line 3675
    .local v0, joinedArray:[F
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3676
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([I[I)[I
    .locals 4
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x0

    .line 3611
    if-nez p0, :cond_0

    .line 3612
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 3619
    :goto_0
    return-object v0

    .line 3613
    :cond_0
    if-nez p1, :cond_1

    .line 3614
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_0

    .line 3616
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 3617
    .local v0, joinedArray:[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3618
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([J[J)[J
    .locals 4
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x0

    .line 3640
    if-nez p0, :cond_0

    .line 3641
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 3648
    :goto_0
    return-object v0

    .line 3642
    :cond_0
    if-nez p1, :cond_1

    .line 3643
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_0

    .line 3645
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [J

    .line 3646
    .local v0, joinedArray:[J
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3647
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter "array1"
    .parameter "array2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3449
    if-nez p0, :cond_0

    .line 3450
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 3474
    :goto_0
    return-object v1

    .line 3451
    :cond_0
    if-nez p1, :cond_1

    .line 3452
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 3454
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 3456
    .local v2, type1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 3457
    .local v1, joinedArray:[Ljava/lang/Object;
    array-length v4, p0

    invoke-static {p0, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3459
    const/4 v4, 0x0

    :try_start_0
    array-length v5, p0

    array-length v6, p1

    invoke-static {p1, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3460
    :catch_0
    move-exception v0

    .line 3467
    .local v0, ase:Ljava/lang/ArrayStoreException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 3468
    .local v3, type2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3469
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot store "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in an array of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3470
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3469
    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3472
    :cond_2
    throw v0
.end method

.method public static varargs addAll([S[S)[S
    .locals 4
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x0

    .line 3582
    if-nez p0, :cond_0

    .line 3583
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 3590
    :goto_0
    return-object v0

    .line 3584
    :cond_0
    if-nez p1, :cond_1

    .line 3585
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_0

    .line 3587
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [S

    .line 3588
    .local v0, joinedArray:[S
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3589
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Z[Z)[Z
    .locals 4
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x0

    .line 3495
    if-nez p0, :cond_0

    .line 3496
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 3503
    :goto_0
    return-object v0

    .line 3497
    :cond_0
    if-nez p1, :cond_1

    .line 3498
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_0

    .line 3500
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Z

    .line 3501
    .local v0, joinedArray:[Z
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3502
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([B)[B
    .locals 1
    .parameter "array"

    .prologue
    .line 400
    if-nez p0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 403
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public static clone([C)[C
    .locals 1
    .parameter "array"

    .prologue
    .line 384
    if-nez p0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public static clone([D)[D
    .locals 1
    .parameter "array"

    .prologue
    .line 416
    if-nez p0, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public static clone([F)[F
    .locals 1
    .parameter "array"

    .prologue
    .line 432
    if-nez p0, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 435
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 1
    .parameter "array"

    .prologue
    .line 352
    if-nez p0, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 1
    .parameter "array"

    .prologue
    .line 336
    if-nez p0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 320
    if-nez p0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 1
    .parameter "array"

    .prologue
    .line 368
    if-nez p0, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0
.end method

.method public static clone([Z)[Z
    .locals 1
    .parameter "array"

    .prologue
    .line 448
    if-nez p0, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0
.end method

.method public static contains([BB)Z
    .locals 2
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2241
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([CC)Z
    .locals 2
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2138
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DD)Z
    .locals 2
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2448
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DDD)Z
    .locals 6
    .parameter "array"
    .parameter "valueToFind"
    .parameter "tolerance"

    .prologue
    const/4 v3, 0x0

    .line 2465
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static contains([FF)Z
    .locals 2
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2568
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 1927
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .locals 2
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 1824
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "array"
    .parameter "objectToFind"

    .prologue
    .line 1721
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([SS)Z
    .locals 2
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2030
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([ZZ)Z
    .locals 2
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2673
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, newArrayComponentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 3979
    if-eqz p0, :cond_0

    .line 3980
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 3981
    .local v0, arrayLength:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 3982
    .local v1, newArray:Ljava/lang/Object;
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3985
    .end local v0           #arrayLength:I
    .end local v1           #newArray:Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractIndices(Ljava/util/HashSet;)[I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 5789
    .local p0, coll:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 5790
    .local v3, result:[I
    const/4 v0, 0x0

    .line 5791
    .local v0, i:I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5794
    return-object v3

    .line 5791
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5792
    .local v2, index:Ljava/lang/Integer;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .parameter "array"

    .prologue
    .line 1369
    if-nez p0, :cond_0

    .line 1370
    const/4 v0, 0x0

    .line 1372
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "array"

    .prologue
    .line 190
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2154
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2172
    if-nez p0, :cond_1

    move v0, v1

    .line 2183
    :cond_0
    :goto_0
    return v0

    .line 2175
    :cond_1
    if-gez p2, :cond_2

    .line 2176
    const/4 p2, 0x0

    .line 2178
    :cond_2
    move v0, p2

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_3

    move v0, v1

    .line 2183
    goto :goto_0

    .line 2179
    :cond_3
    aget-byte v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 2178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOf([CC)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2047
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2066
    if-nez p0, :cond_1

    move v0, v1

    .line 2077
    :cond_0
    :goto_0
    return v0

    .line 2069
    :cond_1
    if-gez p2, :cond_2

    .line 2070
    const/4 p2, 0x0

    .line 2072
    :cond_2
    move v0, p2

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_3

    move v0, v1

    .line 2077
    goto :goto_0

    .line 2073
    :cond_3
    aget-char v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 2072
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOf([DD)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2257
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .locals 6
    .parameter "array"
    .parameter "valueToFind"
    .parameter "tolerance"

    .prologue
    .line 2274
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .locals 4
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2292
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2303
    :cond_0
    :goto_0
    return v0

    .line 2295
    :cond_1
    if-gez p3, :cond_2

    .line 2296
    const/4 p3, 0x0

    .line 2298
    :cond_2
    move v0, p3

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_3

    move v0, v1

    .line 2303
    goto :goto_0

    .line 2299
    :cond_3
    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_0

    .line 2298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOf([DDID)I
    .locals 8
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"
    .parameter "tolerance"

    .prologue
    const/4 v5, -0x1

    .line 2324
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 2337
    :cond_0
    :goto_0
    return v0

    .line 2327
    :cond_1
    if-gez p3, :cond_2

    .line 2328
    const/4 p3, 0x0

    .line 2330
    :cond_2
    sub-double v3, p1, p4

    .line 2331
    .local v3, min:D
    add-double v1, p1, p4

    .line 2332
    .local v1, max:D
    move v0, p3

    .local v0, i:I
    :goto_1
    array-length v6, p0

    if-lt v0, v6, :cond_3

    move v0, v5

    .line 2337
    goto :goto_0

    .line 2333
    :cond_3
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v3

    if-ltz v6, :cond_4

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v1

    if-lez v6, :cond_0

    .line 2332
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOf([FF)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2481
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2499
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2510
    :cond_0
    :goto_0
    return v0

    .line 2502
    :cond_1
    if-gez p2, :cond_2

    .line 2503
    const/4 p2, 0x0

    .line 2505
    :cond_2
    move v0, p2

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_3

    move v0, v1

    .line 2510
    goto :goto_0

    .line 2506
    :cond_3
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 2505
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOf([II)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 1840
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 1858
    if-nez p0, :cond_1

    move v0, v1

    .line 1869
    :cond_0
    :goto_0
    return v0

    .line 1861
    :cond_1
    if-gez p2, :cond_2

    .line 1862
    const/4 p2, 0x0

    .line 1864
    :cond_2
    move v0, p2

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_3

    move v0, v1

    .line 1869
    goto :goto_0

    .line 1865
    :cond_3
    aget v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1864
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOf([JJ)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 1737
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .locals 4
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 1755
    if-nez p0, :cond_1

    move v0, v1

    .line 1766
    :cond_0
    :goto_0
    return v0

    .line 1758
    :cond_1
    if-gez p3, :cond_2

    .line 1759
    const/4 p3, 0x0

    .line 1761
    :cond_2
    move v0, p3

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_3

    move v0, v1

    .line 1766
    goto :goto_0

    .line 1762
    :cond_3
    aget-wide v2, p0, v0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 1761
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "array"
    .parameter "objectToFind"

    .prologue
    .line 1618
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .parameter "array"
    .parameter "objectToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 1636
    if-nez p0, :cond_1

    move v0, v1

    .line 1655
    :cond_0
    :goto_0
    return v0

    .line 1639
    :cond_1
    if-gez p2, :cond_2

    .line 1640
    const/4 p2, 0x0

    .line 1642
    :cond_2
    if-nez p1, :cond_5

    .line 1643
    move v0, p2

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_4

    .end local v0           #i:I
    :cond_3
    move v0, v1

    .line 1655
    goto :goto_0

    .line 1644
    .restart local v0       #i:I
    :cond_4
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 1643
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1648
    .end local v0           #i:I
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1649
    move v0, p2

    .restart local v0       #i:I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1650
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1649
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static indexOf([SS)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 1943
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 1961
    if-nez p0, :cond_1

    move v0, v1

    .line 1972
    :cond_0
    :goto_0
    return v0

    .line 1964
    :cond_1
    if-gez p2, :cond_2

    .line 1965
    const/4 p2, 0x0

    .line 1967
    :cond_2
    move v0, p2

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_3

    move v0, v1

    .line 1972
    goto :goto_0

    .line 1968
    :cond_3
    aget-short v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1967
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOf([ZZ)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2584
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2603
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2614
    :cond_0
    :goto_0
    return v0

    .line 2606
    :cond_1
    if-gez p2, :cond_2

    .line 2607
    const/4 p2, 0x0

    .line 2609
    :cond_2
    move v0, p2

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_3

    move v0, v1

    .line 2614
    goto :goto_0

    .line 2610
    :cond_3
    aget-boolean v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 2609
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isEmpty([B)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3287
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty([C)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3276
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty([D)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3298
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty([F)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3309
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3254
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3243
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3232
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty([S)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3265
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty([Z)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3320
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 204
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3388
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([C)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3377
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([D)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3399
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([F)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3410
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([I)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3355
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([J)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3344
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 3333
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([S)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3366
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Z)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 3421
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([B[B)Z
    .locals 2
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 1285
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 1286
    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    .line 1287
    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1288
    :cond_2
    const/4 v0, 0x0

    .line 1290
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([C[C)Z
    .locals 2
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 1267
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 1268
    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    .line 1269
    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1270
    :cond_2
    const/4 v0, 0x0

    .line 1272
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([D[D)Z
    .locals 2
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 1303
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 1304
    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    .line 1305
    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1306
    :cond_2
    const/4 v0, 0x0

    .line 1308
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([F[F)Z
    .locals 2
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 1321
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 1322
    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    .line 1323
    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1324
    :cond_2
    const/4 v0, 0x0

    .line 1326
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([I[I)Z
    .locals 2
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 1231
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 1232
    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    .line 1233
    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1234
    :cond_2
    const/4 v0, 0x0

    .line 1236
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([J[J)Z
    .locals 2
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 1213
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 1214
    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    .line 1215
    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1216
    :cond_2
    const/4 v0, 0x0

    .line 1218
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 1195
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 1196
    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    .line 1197
    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1198
    :cond_2
    const/4 v0, 0x0

    .line 1200
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([S[S)Z
    .locals 2
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 1249
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 1250
    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    .line 1251
    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1252
    :cond_2
    const/4 v0, 0x0

    .line 1254
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Z[Z)Z
    .locals 2
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 1339
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 1340
    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    .line 1341
    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1342
    :cond_2
    const/4 v0, 0x0

    .line 1344
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 1385
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1386
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BB)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2197
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2215
    if-nez p0, :cond_1

    move v0, v1

    .line 2228
    :cond_0
    :goto_0
    return v0

    .line 2218
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 2219
    goto :goto_0

    .line 2220
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2221
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 2223
    :cond_3
    move v0, p2

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_4

    move v0, v1

    .line 2228
    goto :goto_0

    .line 2224
    :cond_4
    aget-byte v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 2223
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([CC)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2092
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2111
    if-nez p0, :cond_1

    move v0, v1

    .line 2124
    :cond_0
    :goto_0
    return v0

    .line 2114
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 2115
    goto :goto_0

    .line 2116
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2117
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 2119
    :cond_3
    move v0, p2

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_4

    move v0, v1

    .line 2124
    goto :goto_0

    .line 2120
    :cond_4
    aget-char v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 2119
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([DD)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2351
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .locals 6
    .parameter "array"
    .parameter "valueToFind"
    .parameter "tolerance"

    .prologue
    .line 2368
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .locals 4
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2386
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2399
    :cond_0
    :goto_0
    return v0

    .line 2389
    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    .line 2390
    goto :goto_0

    .line 2391
    :cond_2
    array-length v2, p0

    if-lt p3, v2, :cond_3

    .line 2392
    array-length v2, p0

    add-int/lit8 p3, v2, -0x1

    .line 2394
    :cond_3
    move v0, p3

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_4

    move v0, v1

    .line 2399
    goto :goto_0

    .line 2395
    :cond_4
    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_0

    .line 2394
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([DDID)I
    .locals 8
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"
    .parameter "tolerance"

    .prologue
    const/4 v5, -0x1

    .line 2420
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 2435
    :cond_0
    :goto_0
    return v0

    .line 2423
    :cond_1
    if-gez p3, :cond_2

    move v0, v5

    .line 2424
    goto :goto_0

    .line 2425
    :cond_2
    array-length v6, p0

    if-lt p3, v6, :cond_3

    .line 2426
    array-length v6, p0

    add-int/lit8 p3, v6, -0x1

    .line 2428
    :cond_3
    sub-double v3, p1, p4

    .line 2429
    .local v3, min:D
    add-double v1, p1, p4

    .line 2430
    .local v1, max:D
    move v0, p3

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_4

    move v0, v5

    .line 2435
    goto :goto_0

    .line 2431
    :cond_4
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v3

    if-ltz v6, :cond_5

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v1

    if-lez v6, :cond_0

    .line 2430
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([FF)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2524
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2542
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2555
    :cond_0
    :goto_0
    return v0

    .line 2545
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 2546
    goto :goto_0

    .line 2547
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2548
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 2550
    :cond_3
    move v0, p2

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_4

    move v0, v1

    .line 2555
    goto :goto_0

    .line 2551
    :cond_4
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 2550
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([II)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 1883
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 1901
    if-nez p0, :cond_1

    move v0, v1

    .line 1914
    :cond_0
    :goto_0
    return v0

    .line 1904
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 1905
    goto :goto_0

    .line 1906
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 1907
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 1909
    :cond_3
    move v0, p2

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_4

    move v0, v1

    .line 1914
    goto :goto_0

    .line 1910
    :cond_4
    aget v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 1909
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([JJ)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 1780
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .locals 4
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 1798
    if-nez p0, :cond_1

    move v0, v1

    .line 1811
    :cond_0
    :goto_0
    return v0

    .line 1801
    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    .line 1802
    goto :goto_0

    .line 1803
    :cond_2
    array-length v2, p0

    if-lt p3, v2, :cond_3

    .line 1804
    array-length v2, p0

    add-int/lit8 p3, v2, -0x1

    .line 1806
    :cond_3
    move v0, p3

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_4

    move v0, v1

    .line 1811
    goto :goto_0

    .line 1807
    :cond_4
    aget-wide v2, p0, v0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 1806
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "array"
    .parameter "objectToFind"

    .prologue
    .line 1669
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .parameter "array"
    .parameter "objectToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 1687
    if-nez p0, :cond_1

    move v0, v1

    .line 1708
    :cond_0
    :goto_0
    return v0

    .line 1690
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 1691
    goto :goto_0

    .line 1692
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 1693
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 1695
    :cond_3
    if-nez p1, :cond_6

    .line 1696
    move v0, p2

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_5

    .end local v0           #i:I
    :cond_4
    move v0, v1

    .line 1708
    goto :goto_0

    .line 1697
    .restart local v0       #i:I
    :cond_5
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 1696
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1701
    .end local v0           #i:I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1702
    move v0, p2

    .restart local v0       #i:I
    :goto_2
    if-ltz v0, :cond_4

    .line 1703
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1702
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public static lastIndexOf([SS)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 1986
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2004
    if-nez p0, :cond_1

    move v0, v1

    .line 2017
    :cond_0
    :goto_0
    return v0

    .line 2007
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 2008
    goto :goto_0

    .line 2009
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2010
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 2012
    :cond_3
    move v0, p2

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_4

    move v0, v1

    .line 2017
    goto :goto_0

    .line 2013
    :cond_4
    aget-short v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 2012
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1
    .parameter "array"
    .parameter "valueToFind"

    .prologue
    .line 2629
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 3
    .parameter "array"
    .parameter "valueToFind"
    .parameter "startIndex"

    .prologue
    const/4 v1, -0x1

    .line 2647
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2660
    :cond_0
    :goto_0
    return v0

    .line 2650
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 2651
    goto :goto_0

    .line 2652
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2653
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 2655
    :cond_3
    move v0, p2

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_4

    move v0, v1

    .line 2660
    goto :goto_0

    .line 2656
    :cond_4
    aget-boolean v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 2655
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static nullToEmpty([B)[B
    .locals 1
    .parameter "array"

    .prologue
    .line 590
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 591
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 593
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([C)[C
    .locals 1
    .parameter "array"

    .prologue
    .line 570
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 571
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 573
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([D)[D
    .locals 1
    .parameter "array"

    .prologue
    .line 610
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 611
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 613
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([F)[F
    .locals 1
    .parameter "array"

    .prologue
    .line 630
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 631
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 633
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([I)[I
    .locals 1
    .parameter "array"

    .prologue
    .line 530
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 531
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 533
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([J)[J
    .locals 1
    .parameter "array"

    .prologue
    .line 510
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 511
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 513
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 1
    .parameter "array"

    .prologue
    .line 810
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 811
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 813
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .locals 1
    .parameter "array"

    .prologue
    .line 750
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 751
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 753
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .locals 1
    .parameter "array"

    .prologue
    .line 730
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 731
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .line 733
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .locals 1
    .parameter "array"

    .prologue
    .line 770
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 771
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 773
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .locals 1
    .parameter "array"

    .prologue
    .line 790
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 791
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 793
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 1
    .parameter "array"

    .prologue
    .line 690
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 691
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 693
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 1
    .parameter "array"

    .prologue
    .line 670
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 671
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 673
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "array"

    .prologue
    .line 470
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 471
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 473
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .locals 1
    .parameter "array"

    .prologue
    .line 710
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 711
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 713
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "array"

    .prologue
    .line 490
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 491
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 493
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([S)[S
    .locals 1
    .parameter "array"

    .prologue
    .line 550
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 551
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 553
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Z)[Z
    .locals 1
    .parameter "array"

    .prologue
    .line 650
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 651
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 653
    .end local p0
    :cond_1
    return-object p0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .parameter "array"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 4924
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 4925
    .local v0, length:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 4926
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4929
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 4930
    .local v1, result:Ljava/lang/Object;
    invoke-static {p0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4931
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    .line 4932
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4935
    :cond_2
    return-object v1
.end method

.method public static remove([BI)[B
    .locals 1
    .parameter "array"
    .parameter "index"

    .prologue
    .line 4476
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .locals 1
    .parameter "array"
    .parameter "index"

    .prologue
    .line 4541
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .locals 1
    .parameter "array"
    .parameter "index"

    .prologue
    .line 4606
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .locals 1
    .parameter "array"
    .parameter "index"

    .prologue
    .line 4671
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .locals 1
    .parameter "array"
    .parameter "index"

    .prologue
    .line 4736
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .locals 1
    .parameter "array"
    .parameter "index"

    .prologue
    .line 4801
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 4345
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .locals 1
    .parameter "array"
    .parameter "index"

    .prologue
    .line 4866
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .locals 1
    .parameter "array"
    .parameter "index"

    .prologue
    .line 4411
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method private static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 12
    .parameter "array"
    .parameter "indices"

    .prologue
    const/4 v11, 0x0

    .line 5742
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 5743
    .local v6, length:I
    const/4 v2, 0x0

    .line 5745
    .local v2, diff:I
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5746
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 5748
    array-length v4, p1

    .line 5749
    .local v4, i:I
    move v7, v6

    .line 5750
    .local v7, prevIndex:I
    :cond_0
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_3

    .line 5762
    .end local v4           #i:I
    .end local v7           #prevIndex:I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    sub-int v10, v6, v2

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    .line 5763
    .local v8, result:Ljava/lang/Object;
    if-ge v2, v6, :cond_2

    .line 5764
    move v3, v6

    .line 5765
    .local v3, end:I
    sub-int v1, v6, v2

    .line 5766
    .local v1, dest:I
    array-length v9, p1

    add-int/lit8 v4, v9, -0x1

    .restart local v4       #i:I
    :goto_1
    if-gez v4, :cond_6

    .line 5775
    if-lez v3, :cond_2

    .line 5776
    invoke-static {p0, v11, v8, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5779
    .end local v1           #dest:I
    .end local v3           #end:I
    .end local v4           #i:I
    :cond_2
    return-object v8

    .line 5751
    .end local v8           #result:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v7       #prevIndex:I
    :cond_3
    aget v5, p1, v4

    .line 5752
    .local v5, index:I
    if-ltz v5, :cond_4

    if-lt v5, v6, :cond_5

    .line 5753
    :cond_4
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Index: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 5755
    :cond_5
    if-ge v5, v7, :cond_0

    .line 5758
    add-int/lit8 v2, v2, 0x1

    .line 5759
    move v7, v5

    goto :goto_0

    .line 5767
    .end local v5           #index:I
    .end local v7           #prevIndex:I
    .restart local v1       #dest:I
    .restart local v3       #end:I
    .restart local v8       #result:Ljava/lang/Object;
    :cond_6
    aget v5, p1, v4

    .line 5768
    .restart local v5       #index:I
    sub-int v9, v3, v5

    const/4 v10, 0x1

    if-le v9, v10, :cond_7

    .line 5769
    sub-int v9, v3, v5

    add-int/lit8 v0, v9, -0x1

    .line 5770
    .local v0, cp:I
    sub-int/2addr v1, v0

    .line 5771
    add-int/lit8 v9, v5, 0x1

    invoke-static {p0, v9, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5773
    .end local v0           #cp:I
    :cond_7
    move v3, v5

    .line 5766
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public static varargs removeAll([B[I)[B
    .locals 1
    .parameter "array"
    .parameter "indices"

    .prologue
    .line 5056
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .locals 1
    .parameter "array"
    .parameter "indices"

    .prologue
    .line 5323
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .locals 1
    .parameter "array"
    .parameter "indices"

    .prologue
    .line 5590
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .locals 1
    .parameter "array"
    .parameter "indices"

    .prologue
    .line 5501
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .locals 1
    .parameter "array"
    .parameter "indices"

    .prologue
    .line 5234
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .locals 1
    .parameter "array"
    .parameter "indices"

    .prologue
    .line 5412
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 1
    .parameter "array"
    .parameter "indices"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .prologue
    .line 4967
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .locals 1
    .parameter "array"
    .parameter "indices"

    .prologue
    .line 5145
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .locals 1
    .parameter "array"
    .parameter "indices"

    .prologue
    .line 5675
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 4505
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 4506
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4507
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v1

    .line 4509
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([CC)[C
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 4570
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 4571
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4572
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v1

    .line 4574
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([DD)[D
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 4635
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 4636
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4637
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v1

    .line 4639
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([FF)[F
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 4700
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 4701
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4702
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v1

    .line 4704
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([II)[I
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 4765
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 4766
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4767
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v1

    .line 4769
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([JJ)[J
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 4830
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 4831
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4832
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v1

    .line 4834
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter "array"
    .parameter "element"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 4375
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4376
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4377
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 4379
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([SS)[S
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 4895
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 4896
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4897
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v1

    .line 4899
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([ZZ)[Z
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 4440
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 4441
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4442
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    .line 4444
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs removeElements([B[B)[B
    .locals 14
    .parameter "array"
    .parameter "values"

    .prologue
    .line 5087
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5088
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v10

    .line 5112
    :goto_0
    return-object v10

    .line 5090
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    array-length v10, p1

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 5091
    .local v7, occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v11, p1

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_3

    .line 5100
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 5101
    .local v8, toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 5112
    invoke-static {v8}, Lorg/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v10

    invoke-static {p0, v10}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([B[I)[B

    move-result-object v10

    goto :goto_0

    .line 5091
    .end local v8           #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    aget-byte v9, p1, v10

    .line 5092
    .local v9, v:B
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 5093
    .local v0, boxed:Ljava/lang/Byte;
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5094
    .local v1, count:Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_4

    .line 5095
    new-instance v12, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v7, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5091
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5097
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5101
    .end local v0           #boxed:Ljava/lang/Byte;
    .end local v1           #count:Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v9           #v:B
    .restart local v8       #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5102
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    .line 5103
    .local v9, v:Ljava/lang/Byte;
    const/4 v4, 0x0

    .line 5104
    .local v4, found:I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v10}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    .local v2, ct:I
    :goto_3
    if-ge v6, v2, :cond_2

    .line 5105
    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    invoke-static {p0, v10, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v4

    .line 5106
    if-ltz v4, :cond_2

    .line 5109
    add-int/lit8 v5, v4, 0x1

    .end local v4           #found:I
    .local v5, found:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5104
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    .end local v5           #found:I
    .restart local v4       #found:I
    goto :goto_3
.end method

.method public static varargs removeElements([C[C)[C
    .locals 14
    .parameter "array"
    .parameter "values"

    .prologue
    .line 5354
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5355
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v10

    .line 5379
    :goto_0
    return-object v10

    .line 5357
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    array-length v10, p1

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 5358
    .local v7, occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v11, p1

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_3

    .line 5367
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 5368
    .local v8, toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 5379
    invoke-static {v8}, Lorg/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v10

    invoke-static {p0, v10}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([C[I)[C

    move-result-object v10

    goto :goto_0

    .line 5358
    .end local v8           #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    aget-char v9, p1, v10

    .line 5359
    .local v9, v:C
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 5360
    .local v0, boxed:Ljava/lang/Character;
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5361
    .local v1, count:Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_4

    .line 5362
    new-instance v12, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v7, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5358
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5364
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5368
    .end local v0           #boxed:Ljava/lang/Character;
    .end local v1           #count:Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v9           #v:C
    .restart local v8       #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5369
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    .line 5370
    .local v9, v:Ljava/lang/Character;
    const/4 v4, 0x0

    .line 5371
    .local v4, found:I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v10}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    .local v2, ct:I
    :goto_3
    if-ge v6, v2, :cond_2

    .line 5372
    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v10

    invoke-static {p0, v10, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v4

    .line 5373
    if-ltz v4, :cond_2

    .line 5376
    add-int/lit8 v5, v4, 0x1

    .end local v4           #found:I
    .local v5, found:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5371
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    .end local v5           #found:I
    .restart local v4       #found:I
    goto :goto_3
.end method

.method public static varargs removeElements([D[D)[D
    .locals 16
    .parameter "array"
    .parameter "values"

    .prologue
    .line 5621
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 5622
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v12

    .line 5646
    :goto_0
    return-object v12

    .line 5624
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v12, v0

    invoke-direct {v8, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 5625
    .local v8, occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Double;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v13, :cond_3

    .line 5634
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 5635
    .local v9, toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 5646
    invoke-static {v9}, Lorg/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([D[I)[D

    move-result-object v12

    goto :goto_0

    .line 5625
    .end local v9           #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    aget-wide v10, p1, v12

    .line 5626
    .local v10, v:D
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 5627
    .local v1, boxed:Ljava/lang/Double;
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5628
    .local v2, count:Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v2, :cond_4

    .line 5629
    new-instance v14, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v8, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5625
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 5631
    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5635
    .end local v1           #boxed:Ljava/lang/Double;
    .end local v2           #count:Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v10           #v:D
    .restart local v9       #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5636
    .local v4, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Double;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    .line 5637
    .local v10, v:Ljava/lang/Double;
    const/4 v5, 0x0

    .line 5638
    .local v5, found:I
    const/4 v7, 0x0

    .local v7, i:I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v12}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v3

    .local v3, ct:I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 5639
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15, v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v5

    .line 5640
    if-ltz v5, :cond_2

    .line 5643
    add-int/lit8 v6, v5, 0x1

    .end local v5           #found:I
    .local v6, found:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5638
    add-int/lit8 v7, v7, 0x1

    move v5, v6

    .end local v6           #found:I
    .restart local v5       #found:I
    goto :goto_3
.end method

.method public static varargs removeElements([F[F)[F
    .locals 14
    .parameter "array"
    .parameter "values"

    .prologue
    .line 5532
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5533
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v10

    .line 5557
    :goto_0
    return-object v10

    .line 5535
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    array-length v10, p1

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 5536
    .local v7, occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Float;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v11, p1

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_3

    .line 5545
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 5546
    .local v8, toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 5557
    invoke-static {v8}, Lorg/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v10

    invoke-static {p0, v10}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([F[I)[F

    move-result-object v10

    goto :goto_0

    .line 5536
    .end local v8           #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    aget v9, p1, v10

    .line 5537
    .local v9, v:F
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 5538
    .local v0, boxed:Ljava/lang/Float;
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5539
    .local v1, count:Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_4

    .line 5540
    new-instance v12, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v7, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5536
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5542
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5546
    .end local v0           #boxed:Ljava/lang/Float;
    .end local v1           #count:Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v9           #v:F
    .restart local v8       #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5547
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Float;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    .line 5548
    .local v9, v:Ljava/lang/Float;
    const/4 v4, 0x0

    .line 5549
    .local v4, found:I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v10}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    .local v2, ct:I
    :goto_3
    if-ge v6, v2, :cond_2

    .line 5550
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {p0, v10, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v4

    .line 5551
    if-ltz v4, :cond_2

    .line 5554
    add-int/lit8 v5, v4, 0x1

    .end local v4           #found:I
    .local v5, found:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5549
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    .end local v5           #found:I
    .restart local v4       #found:I
    goto :goto_3
.end method

.method public static varargs removeElements([I[I)[I
    .locals 14
    .parameter "array"
    .parameter "values"

    .prologue
    .line 5265
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5266
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v10

    .line 5290
    :goto_0
    return-object v10

    .line 5268
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    array-length v10, p1

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 5269
    .local v7, occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v11, p1

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_3

    .line 5278
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 5279
    .local v8, toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 5290
    invoke-static {v8}, Lorg/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v10

    invoke-static {p0, v10}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([I[I)[I

    move-result-object v10

    goto :goto_0

    .line 5269
    .end local v8           #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    aget v9, p1, v10

    .line 5270
    .local v9, v:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5271
    .local v0, boxed:Ljava/lang/Integer;
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5272
    .local v1, count:Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_4

    .line 5273
    new-instance v12, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v7, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5269
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5275
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5279
    .end local v0           #boxed:Ljava/lang/Integer;
    .end local v1           #count:Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v9           #v:I
    .restart local v8       #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5280
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 5281
    .local v9, v:Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 5282
    .local v4, found:I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v10}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    .local v2, ct:I
    :goto_3
    if-ge v6, v2, :cond_2

    .line 5283
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v4

    .line 5284
    if-ltz v4, :cond_2

    .line 5287
    add-int/lit8 v5, v4, 0x1

    .end local v4           #found:I
    .local v5, found:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5282
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    .end local v5           #found:I
    .restart local v4       #found:I
    goto :goto_3
.end method

.method public static varargs removeElements([J[J)[J
    .locals 16
    .parameter "array"
    .parameter "values"

    .prologue
    .line 5443
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 5444
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v12

    .line 5468
    :goto_0
    return-object v12

    .line 5446
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v12, v0

    invoke-direct {v8, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 5447
    .local v8, occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v13, :cond_3

    .line 5456
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 5457
    .local v9, toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 5468
    invoke-static {v9}, Lorg/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([J[I)[J

    move-result-object v12

    goto :goto_0

    .line 5447
    .end local v9           #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    aget-wide v10, p1, v12

    .line 5448
    .local v10, v:J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 5449
    .local v1, boxed:Ljava/lang/Long;
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5450
    .local v2, count:Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v2, :cond_4

    .line 5451
    new-instance v14, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v8, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5447
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 5453
    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5457
    .end local v1           #boxed:Ljava/lang/Long;
    .end local v2           #count:Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v10           #v:J
    .restart local v9       #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5458
    .local v4, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 5459
    .local v10, v:Ljava/lang/Long;
    const/4 v5, 0x0

    .line 5460
    .local v5, found:I
    const/4 v7, 0x0

    .local v7, i:I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v12}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v3

    .local v3, ct:I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 5461
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15, v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v5

    .line 5462
    if-ltz v5, :cond_2

    .line 5465
    add-int/lit8 v6, v5, 0x1

    .end local v5           #found:I
    .local v6, found:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5460
    add-int/lit8 v7, v7, 0x1

    move v5, v6

    .end local v6           #found:I
    .restart local v5       #found:I
    goto :goto_3
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 13
    .parameter "array"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 4999
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5000
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .line 5023
    :goto_0
    return-object v9

    .line 5002
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    array-length v9, p1

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 5003
    .local v6, occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v10, p1

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v10, :cond_3

    .line 5011
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 5012
    .local v7, toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 5023
    invoke-static {v7}, Lorg/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v9

    invoke-static {p0, v9}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 5003
    .end local v7           #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    aget-object v8, p1, v9

    .line 5004
    .local v8, v:Ljava/lang/Object;,"TT;"
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5005
    .local v0, count:Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v0, :cond_4

    .line 5006
    new-instance v11, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5003
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5008
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5012
    .end local v0           #count:Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v8           #v:Ljava/lang/Object;,"TT;"
    .restart local v7       #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5013
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 5014
    .restart local v8       #v:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    .line 5015
    .local v3, found:I
    const/4 v5, 0x0

    .local v5, i:I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v9}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v1

    .local v1, ct:I
    :goto_3
    if-ge v5, v1, :cond_2

    .line 5016
    invoke-static {p0, v8, v3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v3

    .line 5017
    if-ltz v3, :cond_2

    .line 5020
    add-int/lit8 v4, v3, 0x1

    .end local v3           #found:I
    .local v4, found:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5015
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    .end local v4           #found:I
    .restart local v3       #found:I
    goto :goto_3
.end method

.method public static varargs removeElements([S[S)[S
    .locals 14
    .parameter "array"
    .parameter "values"

    .prologue
    .line 5176
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5177
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v10

    .line 5201
    :goto_0
    return-object v10

    .line 5179
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    array-length v10, p1

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 5180
    .local v7, occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Short;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v11, p1

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_3

    .line 5189
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 5190
    .local v8, toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 5201
    invoke-static {v8}, Lorg/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v10

    invoke-static {p0, v10}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([S[I)[S

    move-result-object v10

    goto :goto_0

    .line 5180
    .end local v8           #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    aget-short v9, p1, v10

    .line 5181
    .local v9, v:S
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 5182
    .local v0, boxed:Ljava/lang/Short;
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5183
    .local v1, count:Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_4

    .line 5184
    new-instance v12, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v7, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5180
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5186
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5190
    .end local v0           #boxed:Ljava/lang/Short;
    .end local v1           #count:Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v9           #v:S
    .restart local v8       #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5191
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Short;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Short;

    .line 5192
    .local v9, v:Ljava/lang/Short;
    const/4 v4, 0x0

    .line 5193
    .local v4, found:I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v10}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    .local v2, ct:I
    :goto_3
    if-ge v6, v2, :cond_2

    .line 5194
    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v10

    invoke-static {p0, v10, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v4

    .line 5195
    if-ltz v4, :cond_2

    .line 5198
    add-int/lit8 v5, v4, 0x1

    .end local v4           #found:I
    .local v5, found:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5193
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    .end local v5           #found:I
    .restart local v4       #found:I
    goto :goto_3
.end method

.method public static varargs removeElements([Z[Z)[Z
    .locals 14
    .parameter "array"
    .parameter "values"

    .prologue
    .line 5706
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5707
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v10

    .line 5731
    :goto_0
    return-object v10

    .line 5709
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    array-length v10, p1

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 5710
    .local v7, occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Boolean;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v11, p1

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_3

    .line 5719
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 5720
    .local v8, toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 5731
    invoke-static {v8}, Lorg/apache/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v10

    invoke-static {p0, v10}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([Z[I)[Z

    move-result-object v10

    goto :goto_0

    .line 5710
    .end local v8           #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    aget-boolean v9, p1, v10

    .line 5711
    .local v9, v:Z
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5712
    .local v0, boxed:Ljava/lang/Boolean;
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5713
    .local v1, count:Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_4

    .line 5714
    new-instance v12, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v7, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5710
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5716
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5720
    .end local v0           #boxed:Ljava/lang/Boolean;
    .end local v1           #count:Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v9           #v:Z
    .restart local v8       #toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5721
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Boolean;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 5722
    .local v9, v:Ljava/lang/Boolean;
    const/4 v4, 0x0

    .line 5723
    .local v4, found:I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v10}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    .local v2, ct:I
    :goto_3
    if-ge v6, v2, :cond_2

    .line 5724
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {p0, v10, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v4

    .line 5725
    if-ltz v4, :cond_2

    .line 5728
    add-int/lit8 v5, v4, 0x1

    .end local v4           #found:I
    .local v5, found:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5723
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    .end local v5           #found:I
    .restart local v4       #found:I
    goto :goto_3
.end method

.method public static reverse([B)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1518
    if-nez p0, :cond_1

    .line 1531
    :cond_0
    return-void

    .line 1521
    :cond_1
    const/4 v0, 0x0

    .line 1522
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1524
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1525
    aget-byte v2, p0, v1

    .line 1526
    .local v2, tmp:B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 1527
    aput-byte v2, p0, v0

    .line 1528
    add-int/lit8 v1, v1, -0x1

    .line 1529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([C)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1495
    if-nez p0, :cond_1

    .line 1508
    :cond_0
    return-void

    .line 1498
    :cond_1
    const/4 v0, 0x0

    .line 1499
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1501
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1502
    aget-char v2, p0, v1

    .line 1503
    .local v2, tmp:C
    aget-char v3, p0, v0

    aput-char v3, p0, v1

    .line 1504
    aput-char v2, p0, v0

    .line 1505
    add-int/lit8 v1, v1, -0x1

    .line 1506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([D)V
    .locals 6
    .parameter "array"

    .prologue
    .line 1541
    if-nez p0, :cond_1

    .line 1554
    :cond_0
    return-void

    .line 1544
    :cond_1
    const/4 v0, 0x0

    .line 1545
    .local v0, i:I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 1547
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1548
    aget-wide v2, p0, v1

    .line 1549
    .local v2, tmp:D
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1550
    aput-wide v2, p0, v0

    .line 1551
    add-int/lit8 v1, v1, -0x1

    .line 1552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([F)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1564
    if-nez p0, :cond_1

    .line 1577
    :cond_0
    return-void

    .line 1567
    :cond_1
    const/4 v0, 0x0

    .line 1568
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1570
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1571
    aget v2, p0, v1

    .line 1572
    .local v2, tmp:F
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1573
    aput v2, p0, v0

    .line 1574
    add-int/lit8 v1, v1, -0x1

    .line 1575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([I)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1449
    if-nez p0, :cond_1

    .line 1462
    :cond_0
    return-void

    .line 1452
    :cond_1
    const/4 v0, 0x0

    .line 1453
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1455
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1456
    aget v2, p0, v1

    .line 1457
    .local v2, tmp:I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1458
    aput v2, p0, v0

    .line 1459
    add-int/lit8 v1, v1, -0x1

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([J)V
    .locals 6
    .parameter "array"

    .prologue
    .line 1426
    if-nez p0, :cond_1

    .line 1439
    :cond_0
    return-void

    .line 1429
    :cond_1
    const/4 v0, 0x0

    .line 1430
    .local v0, i:I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 1432
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1433
    aget-wide v2, p0, v1

    .line 1434
    .local v2, tmp:J
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1435
    aput-wide v2, p0, v0

    .line 1436
    add-int/lit8 v1, v1, -0x1

    .line 1437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1403
    if-nez p0, :cond_1

    .line 1416
    :cond_0
    return-void

    .line 1406
    :cond_1
    const/4 v0, 0x0

    .line 1407
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1409
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1410
    aget-object v2, p0, v1

    .line 1411
    .local v2, tmp:Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 1412
    aput-object v2, p0, v0

    .line 1413
    add-int/lit8 v1, v1, -0x1

    .line 1414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([S)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1472
    if-nez p0, :cond_1

    .line 1485
    :cond_0
    return-void

    .line 1475
    :cond_1
    const/4 v0, 0x0

    .line 1476
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1478
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1479
    aget-short v2, p0, v1

    .line 1480
    .local v2, tmp:S
    aget-short v3, p0, v0

    aput-short v3, p0, v1

    .line 1481
    aput-short v2, p0, v0

    .line 1482
    add-int/lit8 v1, v1, -0x1

    .line 1483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reverse([Z)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1587
    if-nez p0, :cond_1

    .line 1600
    :cond_0
    return-void

    .line 1590
    :cond_1
    const/4 v0, 0x0

    .line 1591
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1593
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1594
    aget-boolean v2, p0, v1

    .line 1595
    .local v2, tmp:Z
    aget-boolean v3, p0, v0

    aput-boolean v3, p0, v1

    .line 1596
    aput-boolean v2, p0, v0

    .line 1597
    add-int/lit8 v1, v1, -0x1

    .line 1598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static subarray([BII)[B
    .locals 3
    .parameter "array"
    .parameter "startIndexInclusive"
    .parameter "endIndexExclusive"

    .prologue
    .line 1045
    if-nez p0, :cond_0

    .line 1046
    const/4 v1, 0x0

    .line 1061
    :goto_0
    return-object v1

    .line 1048
    :cond_0
    if-gez p1, :cond_1

    .line 1049
    const/4 p1, 0x0

    .line 1051
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1052
    array-length p2, p0

    .line 1054
    :cond_2
    sub-int v0, p2, p1

    .line 1055
    .local v0, newSize:I
    if-gtz v0, :cond_3

    .line 1056
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 1059
    :cond_3
    new-array v1, v0, [B

    .line 1060
    .local v1, subarray:[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([CII)[C
    .locals 3
    .parameter "array"
    .parameter "startIndexInclusive"
    .parameter "endIndexExclusive"

    .prologue
    .line 1006
    if-nez p0, :cond_0

    .line 1007
    const/4 v1, 0x0

    .line 1022
    :goto_0
    return-object v1

    .line 1009
    :cond_0
    if-gez p1, :cond_1

    .line 1010
    const/4 p1, 0x0

    .line 1012
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1013
    array-length p2, p0

    .line 1015
    :cond_2
    sub-int v0, p2, p1

    .line 1016
    .local v0, newSize:I
    if-gtz v0, :cond_3

    .line 1017
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 1020
    :cond_3
    new-array v1, v0, [C

    .line 1021
    .local v1, subarray:[C
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([DII)[D
    .locals 3
    .parameter "array"
    .parameter "startIndexInclusive"
    .parameter "endIndexExclusive"

    .prologue
    .line 1084
    if-nez p0, :cond_0

    .line 1085
    const/4 v1, 0x0

    .line 1100
    :goto_0
    return-object v1

    .line 1087
    :cond_0
    if-gez p1, :cond_1

    .line 1088
    const/4 p1, 0x0

    .line 1090
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1091
    array-length p2, p0

    .line 1093
    :cond_2
    sub-int v0, p2, p1

    .line 1094
    .local v0, newSize:I
    if-gtz v0, :cond_3

    .line 1095
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 1098
    :cond_3
    new-array v1, v0, [D

    .line 1099
    .local v1, subarray:[D
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([FII)[F
    .locals 3
    .parameter "array"
    .parameter "startIndexInclusive"
    .parameter "endIndexExclusive"

    .prologue
    .line 1123
    if-nez p0, :cond_0

    .line 1124
    const/4 v1, 0x0

    .line 1139
    :goto_0
    return-object v1

    .line 1126
    :cond_0
    if-gez p1, :cond_1

    .line 1127
    const/4 p1, 0x0

    .line 1129
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1130
    array-length p2, p0

    .line 1132
    :cond_2
    sub-int v0, p2, p1

    .line 1133
    .local v0, newSize:I
    if-gtz v0, :cond_3

    .line 1134
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 1137
    :cond_3
    new-array v1, v0, [F

    .line 1138
    .local v1, subarray:[F
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([III)[I
    .locals 3
    .parameter "array"
    .parameter "startIndexInclusive"
    .parameter "endIndexExclusive"

    .prologue
    .line 928
    if-nez p0, :cond_0

    .line 929
    const/4 v1, 0x0

    .line 944
    :goto_0
    return-object v1

    .line 931
    :cond_0
    if-gez p1, :cond_1

    .line 932
    const/4 p1, 0x0

    .line 934
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 935
    array-length p2, p0

    .line 937
    :cond_2
    sub-int v0, p2, p1

    .line 938
    .local v0, newSize:I
    if-gtz v0, :cond_3

    .line 939
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 942
    :cond_3
    new-array v1, v0, [I

    .line 943
    .local v1, subarray:[I
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([JII)[J
    .locals 3
    .parameter "array"
    .parameter "startIndexInclusive"
    .parameter "endIndexExclusive"

    .prologue
    .line 889
    if-nez p0, :cond_0

    .line 890
    const/4 v1, 0x0

    .line 905
    :goto_0
    return-object v1

    .line 892
    :cond_0
    if-gez p1, :cond_1

    .line 893
    const/4 p1, 0x0

    .line 895
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 896
    array-length p2, p0

    .line 898
    :cond_2
    sub-int v0, p2, p1

    .line 899
    .local v0, newSize:I
    if-gtz v0, :cond_3

    .line 900
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 903
    :cond_3
    new-array v1, v0, [J

    .line 904
    .local v1, subarray:[J
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6
    .parameter "array"
    .parameter "startIndexInclusive"
    .parameter "endIndexExclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 847
    if-nez p0, :cond_0

    .line 848
    const/4 v0, 0x0

    .line 866
    :goto_0
    return-object v0

    .line 850
    :cond_0
    if-gez p1, :cond_1

    .line 851
    const/4 p1, 0x0

    .line 853
    :cond_1
    array-length v4, p0

    if-le p2, v4, :cond_2

    .line 854
    array-length p2, p0

    .line 856
    :cond_2
    sub-int v1, p2, p1

    .line 857
    .local v1, newSize:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 858
    .local v3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-gtz v1, :cond_3

    .line 860
    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 861
    .local v0, emptyArray:[Ljava/lang/Object;
    goto :goto_0

    .line 864
    .end local v0           #emptyArray:[Ljava/lang/Object;
    :cond_3
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 865
    .local v2, subarray:[Ljava/lang/Object;
    invoke-static {p0, p1, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 866
    goto :goto_0
.end method

.method public static subarray([SII)[S
    .locals 3
    .parameter "array"
    .parameter "startIndexInclusive"
    .parameter "endIndexExclusive"

    .prologue
    .line 967
    if-nez p0, :cond_0

    .line 968
    const/4 v1, 0x0

    .line 983
    :goto_0
    return-object v1

    .line 970
    :cond_0
    if-gez p1, :cond_1

    .line 971
    const/4 p1, 0x0

    .line 973
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 974
    array-length p2, p0

    .line 976
    :cond_2
    sub-int v0, p2, p1

    .line 977
    .local v0, newSize:I
    if-gtz v0, :cond_3

    .line 978
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 981
    :cond_3
    new-array v1, v0, [S

    .line 982
    .local v1, subarray:[S
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([ZII)[Z
    .locals 3
    .parameter "array"
    .parameter "startIndexInclusive"
    .parameter "endIndexExclusive"

    .prologue
    .line 1162
    if-nez p0, :cond_0

    .line 1163
    const/4 v1, 0x0

    .line 1178
    :goto_0
    return-object v1

    .line 1165
    :cond_0
    if-gez p1, :cond_1

    .line 1166
    const/4 p1, 0x0

    .line 1168
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1169
    array-length p2, p0

    .line 1171
    :cond_2
    sub-int v0, p2, p1

    .line 1172
    .local v0, newSize:I
    if-gtz v0, :cond_3

    .line 1173
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 1176
    :cond_3
    new-array v1, v0, [Z

    .line 1177
    .local v1, subarray:[Z
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .parameter "items"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 301
    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 9
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    if-nez p0, :cond_1

    .line 236
    const/4 v3, 0x0

    .line 258
    :cond_0
    return-object v3

    .line 238
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v5, p0

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 239
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 240
    aget-object v4, p0, v2

    .line 241
    .local v4, object:Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/Map$Entry;

    if-eqz v5, :cond_2

    move-object v1, v4

    .line 242
    check-cast v1, Ljava/util/Map$Entry;

    .line 243
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_2
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_4

    move-object v0, v4

    .line 245
    check-cast v0, [Ljava/lang/Object;

    .line 246
    .local v0, entry:[Ljava/lang/Object;
    array-length v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 247
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Array element "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 248
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 249
    const-string v7, "\', has a length less than 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 247
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 251
    :cond_3
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 253
    .end local v0           #entry:[Ljava/lang/Object;
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Array element "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 254
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 255
    const-string v7, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3
    .parameter "array"

    .prologue
    .line 3211
    if-nez p0, :cond_1

    .line 3212
    const/4 v1, 0x0

    .line 3220
    :cond_0
    :goto_0
    return-object v1

    .line 3213
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 3214
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    goto :goto_0

    .line 3216
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Boolean;

    .line 3217
    .local v1, result:[Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 3218
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v2, v1, v0

    .line 3217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3218
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 3
    .parameter "array"

    .prologue
    .line 3007
    if-nez p0, :cond_1

    .line 3008
    const/4 v1, 0x0

    .line 3016
    :cond_0
    :goto_0
    return-object v1

    .line 3009
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 3010
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    goto :goto_0

    .line 3012
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Byte;

    .line 3013
    .local v1, result:[Ljava/lang/Byte;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 3014
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3013
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 3
    .parameter "array"

    .prologue
    .line 2735
    if-nez p0, :cond_1

    .line 2736
    const/4 v1, 0x0

    .line 2744
    :cond_0
    :goto_0
    return-object v1

    .line 2737
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2738
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    goto :goto_0

    .line 2740
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Character;

    .line 2741
    .local v1, result:[Ljava/lang/Character;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2742
    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2741
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 4
    .parameter "array"

    .prologue
    .line 3075
    if-nez p0, :cond_1

    .line 3076
    const/4 v1, 0x0

    .line 3084
    :cond_0
    :goto_0
    return-object v1

    .line 3077
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 3078
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    goto :goto_0

    .line 3080
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Double;

    .line 3081
    .local v1, result:[Ljava/lang/Double;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 3082
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3081
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 3
    .parameter "array"

    .prologue
    .line 3143
    if-nez p0, :cond_1

    .line 3144
    const/4 v1, 0x0

    .line 3152
    :cond_0
    :goto_0
    return-object v1

    .line 3145
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 3146
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    goto :goto_0

    .line 3148
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Float;

    .line 3149
    .local v1, result:[Ljava/lang/Float;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 3150
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 3
    .parameter "array"

    .prologue
    .line 2871
    if-nez p0, :cond_1

    .line 2872
    const/4 v1, 0x0

    .line 2880
    :cond_0
    :goto_0
    return-object v1

    .line 2873
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2874
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    goto :goto_0

    .line 2876
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Integer;

    .line 2877
    .local v1, result:[Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2878
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2877
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 4
    .parameter "array"

    .prologue
    .line 2803
    if-nez p0, :cond_1

    .line 2804
    const/4 v1, 0x0

    .line 2812
    :cond_0
    :goto_0
    return-object v1

    .line 2805
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2806
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    goto :goto_0

    .line 2808
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .line 2809
    .local v1, result:[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2810
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2809
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 3
    .parameter "array"

    .prologue
    .line 2939
    if-nez p0, :cond_1

    .line 2940
    const/4 v1, 0x0

    .line 2948
    :cond_0
    :goto_0
    return-object v1

    .line 2941
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2942
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    goto :goto_0

    .line 2944
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Short;

    .line 2945
    .local v1, result:[Ljava/lang/Short;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2946
    aget-short v2, p0, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2945
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3
    .parameter "array"

    .prologue
    .line 2963
    if-nez p0, :cond_1

    .line 2964
    const/4 v1, 0x0

    .line 2972
    :cond_0
    :goto_0
    return-object v1

    .line 2965
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2966
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 2968
    :cond_2
    array-length v2, p0

    new-array v1, v2, [B

    .line 2969
    .local v1, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2970
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 2969
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 4
    .parameter "array"
    .parameter "valueForNull"

    .prologue
    .line 2985
    if-nez p0, :cond_1

    .line 2986
    const/4 v2, 0x0

    .line 2995
    :cond_0
    :goto_0
    return-object v2

    .line 2987
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2988
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 2990
    :cond_2
    array-length v3, p0

    new-array v2, v3, [B

    .line 2991
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2992
    aget-object v0, p0, v1

    .line 2993
    .local v0, b:Ljava/lang/Byte;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-byte v3, v2, v1

    .line 2991
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2993
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3
    .parameter "array"

    .prologue
    .line 2691
    if-nez p0, :cond_1

    .line 2692
    const/4 v1, 0x0

    .line 2700
    :cond_0
    :goto_0
    return-object v1

    .line 2693
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2694
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 2696
    :cond_2
    array-length v2, p0

    new-array v1, v2, [C

    .line 2697
    .local v1, result:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2698
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 2697
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 4
    .parameter "array"
    .parameter "valueForNull"

    .prologue
    .line 2713
    if-nez p0, :cond_1

    .line 2714
    const/4 v2, 0x0

    .line 2723
    :cond_0
    :goto_0
    return-object v2

    .line 2715
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2716
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 2718
    :cond_2
    array-length v3, p0

    new-array v2, v3, [C

    .line 2719
    .local v2, result:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2720
    aget-object v0, p0, v1

    .line 2721
    .local v0, b:Ljava/lang/Character;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-char v3, v2, v1

    .line 2719
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2721
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4
    .parameter "array"

    .prologue
    .line 3031
    if-nez p0, :cond_1

    .line 3032
    const/4 v1, 0x0

    .line 3040
    :cond_0
    :goto_0
    return-object v1

    .line 3033
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 3034
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 3036
    :cond_2
    array-length v2, p0

    new-array v1, v2, [D

    .line 3037
    .local v1, result:[D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 3038
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 3037
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 5
    .parameter "array"
    .parameter "valueForNull"

    .prologue
    .line 3053
    if-nez p0, :cond_1

    .line 3054
    const/4 v2, 0x0

    .line 3063
    :cond_0
    :goto_0
    return-object v2

    .line 3055
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 3056
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 3058
    :cond_2
    array-length v3, p0

    new-array v2, v3, [D

    .line 3059
    .local v2, result:[D
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 3060
    aget-object v0, p0, v1

    .line 3061
    .local v0, b:Ljava/lang/Double;
    if-nez v0, :cond_3

    move-wide v3, p1

    :goto_2
    aput-wide v3, v2, v1

    .line 3059
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3061
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3
    .parameter "array"

    .prologue
    .line 3099
    if-nez p0, :cond_1

    .line 3100
    const/4 v1, 0x0

    .line 3108
    :cond_0
    :goto_0
    return-object v1

    .line 3101
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 3102
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 3104
    :cond_2
    array-length v2, p0

    new-array v1, v2, [F

    .line 3105
    .local v1, result:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 3106
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 3105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 4
    .parameter "array"
    .parameter "valueForNull"

    .prologue
    .line 3121
    if-nez p0, :cond_1

    .line 3122
    const/4 v2, 0x0

    .line 3131
    :cond_0
    :goto_0
    return-object v2

    .line 3123
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 3124
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 3126
    :cond_2
    array-length v3, p0

    new-array v2, v3, [F

    .line 3127
    .local v2, result:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 3128
    aget-object v0, p0, v1

    .line 3129
    .local v0, b:Ljava/lang/Float;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput v3, v2, v1

    .line 3127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3129
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3
    .parameter "array"

    .prologue
    .line 2827
    if-nez p0, :cond_1

    .line 2828
    const/4 v1, 0x0

    .line 2836
    :cond_0
    :goto_0
    return-object v1

    .line 2829
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2830
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 2832
    :cond_2
    array-length v2, p0

    new-array v1, v2, [I

    .line 2833
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2834
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 2833
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 4
    .parameter "array"
    .parameter "valueForNull"

    .prologue
    .line 2849
    if-nez p0, :cond_1

    .line 2850
    const/4 v2, 0x0

    .line 2859
    :cond_0
    :goto_0
    return-object v2

    .line 2851
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2852
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 2854
    :cond_2
    array-length v3, p0

    new-array v2, v3, [I

    .line 2855
    .local v2, result:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2856
    aget-object v0, p0, v1

    .line 2857
    .local v0, b:Ljava/lang/Integer;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput v3, v2, v1

    .line 2855
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2857
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4
    .parameter "array"

    .prologue
    .line 2759
    if-nez p0, :cond_1

    .line 2760
    const/4 v1, 0x0

    .line 2768
    :cond_0
    :goto_0
    return-object v1

    .line 2761
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2762
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 2764
    :cond_2
    array-length v2, p0

    new-array v1, v2, [J

    .line 2765
    .local v1, result:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2766
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2765
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 5
    .parameter "array"
    .parameter "valueForNull"

    .prologue
    .line 2781
    if-nez p0, :cond_1

    .line 2782
    const/4 v2, 0x0

    .line 2791
    :cond_0
    :goto_0
    return-object v2

    .line 2783
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2784
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 2786
    :cond_2
    array-length v3, p0

    new-array v2, v3, [J

    .line 2787
    .local v2, result:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2788
    aget-object v0, p0, v1

    .line 2789
    .local v0, b:Ljava/lang/Long;
    if-nez v0, :cond_3

    move-wide v3, p1

    :goto_2
    aput-wide v3, v2, v1

    .line 2787
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2789
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3
    .parameter "array"

    .prologue
    .line 2895
    if-nez p0, :cond_1

    .line 2896
    const/4 v1, 0x0

    .line 2904
    :cond_0
    :goto_0
    return-object v1

    .line 2897
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 2898
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 2900
    :cond_2
    array-length v2, p0

    new-array v1, v2, [S

    .line 2901
    .local v1, result:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2902
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    .line 2901
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 4
    .parameter "array"
    .parameter "valueForNull"

    .prologue
    .line 2917
    if-nez p0, :cond_1

    .line 2918
    const/4 v2, 0x0

    .line 2927
    :cond_0
    :goto_0
    return-object v2

    .line 2919
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 2920
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 2922
    :cond_2
    array-length v3, p0

    new-array v2, v3, [S

    .line 2923
    .local v2, result:[S
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 2924
    aget-object v0, p0, v1

    .line 2925
    .local v0, b:Ljava/lang/Short;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-short v3, v2, v1

    .line 2923
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2925
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3
    .parameter "array"

    .prologue
    .line 3167
    if-nez p0, :cond_1

    .line 3168
    const/4 v1, 0x0

    .line 3176
    :cond_0
    :goto_0
    return-object v1

    .line 3169
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 3170
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 3172
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Z

    .line 3173
    .local v1, result:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 3174
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 3173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 4
    .parameter "array"
    .parameter "valueForNull"

    .prologue
    .line 3189
    if-nez p0, :cond_1

    .line 3190
    const/4 v2, 0x0

    .line 3199
    :cond_0
    :goto_0
    return-object v2

    .line 3191
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 3192
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 3194
    :cond_2
    array-length v3, p0

    new-array v2, v3, [Z

    .line 3195
    .local v2, result:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 3196
    aget-object v0, p0, v1

    .line 3197
    .local v0, b:Ljava/lang/Boolean;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-boolean v3, v2, v1

    .line 3195
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3197
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "array"

    .prologue
    .line 159
    const-string v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "array"
    .parameter "stringIfNull"

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 178
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
