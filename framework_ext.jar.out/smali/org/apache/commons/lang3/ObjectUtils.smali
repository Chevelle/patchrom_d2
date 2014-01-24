.class public Lorg/apache/commons/lang3/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/ObjectUtils$Null;
    }
.end annotation


# static fields
.field public static final NULL:Lorg/apache/commons/lang3/ObjectUtils$Null;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lorg/apache/commons/lang3/ObjectUtils$Null;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ObjectUtils$Null;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ObjectUtils;->NULL:Lorg/apache/commons/lang3/ObjectUtils$Null;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, obj:Ljava/lang/Object;,"TT;"
    instance-of v7, p0, Ljava/lang/Cloneable;

    if-eqz v7, :cond_3

    .line 512
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 513
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 514
    .local v2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_1

    .line 515
    check-cast p0, [Ljava/lang/Object;

    .end local p0           #obj:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    .line 540
    .end local v2           #componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v6, result:Ljava/lang/Object;
    :cond_0
    :goto_0
    move-object v0, v6

    .line 544
    .local v0, checked:Ljava/lang/Object;,"TT;"
    :goto_1
    return-object v0

    .line 517
    .end local v0           #checked:Ljava/lang/Object;,"TT;"
    .end local v6           #result:Ljava/lang/Object;
    .restart local v2       #componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0       #obj:Ljava/lang/Object;,"TT;"
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 518
    .local v4, length:I
    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    .restart local v6       #result:Ljava/lang/Object;
    move v5, v4

    .line 519
    .end local v4           #length:I
    .local v5, length:I
    :goto_2
    add-int/lit8 v4, v5, -0x1

    .end local v5           #length:I
    .restart local v4       #length:I
    if-lez v5, :cond_0

    .line 520
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v4, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v5, v4

    .end local v4           #length:I
    .restart local v5       #length:I
    goto :goto_2

    .line 525
    .end local v2           #componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #length:I
    .end local v6           #result:Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "clone"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 526
    .local v1, clone:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .restart local v6       #result:Ljava/lang/Object;
    goto :goto_0

    .line 527
    .end local v1           #clone:Ljava/lang/reflect/Method;
    .end local v6           #result:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 528
    .local v3, e:Ljava/lang/NoSuchMethodException;
    new-instance v7, Lorg/apache/commons/lang3/exception/CloneFailedException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Cloneable type "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 530
    const-string v9, " has no clone method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 528
    invoke-direct {v7, v8, v3}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 531
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 532
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Lorg/apache/commons/lang3/exception/CloneFailedException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Cannot clone Cloneable type "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 532
    invoke-direct {v7, v8, v3}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 534
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 535
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Lorg/apache/commons/lang3/exception/CloneFailedException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception cloning Cloneable type "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 535
    invoke-direct {v7, v8, v9}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 544
    .end local v3           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public static cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, obj:Ljava/lang/Object;,"TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 565
    .local v0, clone:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_0

    .end local p0           #obj:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object p0

    .restart local p0       #obj:Ljava/lang/Object;,"TT;"
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, c1:Ljava/lang/Comparable;,"TT;"
    .local p1, c2:Ljava/lang/Comparable;,"TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I
    .locals 2
    .parameter
    .parameter
    .parameter "nullGreater"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;Z)I"
        }
    .end annotation

    .prologue
    .local p0, c1:Ljava/lang/Comparable;,"TT;"
    .local p1, c2:Ljava/lang/Comparable;,"TT;"
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 409
    if-ne p0, p1, :cond_1

    .line 410
    const/4 v0, 0x0

    .line 416
    :cond_0
    :goto_0
    return v0

    .line 411
    :cond_1
    if-nez p0, :cond_2

    .line 412
    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 413
    :cond_2
    if-nez p1, :cond_4

    .line 414
    if-eqz p2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 416
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, object:Ljava/lang/Object;,"TT;"
    .local p1, defaultValue:Ljava/lang/Object;,"TT;"
    if-eqz p0, :cond_0

    .end local p0           #object:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object p0

    .restart local p0       #object:Ljava/lang/Object;,"TT;"
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 152
    if-ne p0, p1, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    .line 155
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p0, :cond_0

    .line 121
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_2

    .line 127
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 121
    :cond_2
    aget-object v0, p0, v1

    .line 122
    .local v0, val:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 199
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static varargs hashCodeMulti([Ljava/lang/Object;)I
    .locals 6
    .parameter "objects"

    .prologue
    .line 223
    const/4 v0, 0x1

    .line 224
    .local v0, hash:I
    if-eqz p0, :cond_0

    .line 225
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 229
    :cond_0
    return v0

    .line 225
    :cond_1
    aget-object v1, p0, v2

    .line 226
    .local v1, object:Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    invoke-static {v1}, Lorg/apache/commons/lang3/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v5

    add-int v0, v4, v5

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "object"

    .prologue
    .line 251
    if-nez p0, :cond_0

    .line 252
    const/4 v1, 0x0

    .line 256
    :goto_0
    return-object v1

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 2
    .parameter "buffer"
    .parameter "object"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot get the toString of a null identity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 279
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 280
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    return-void
.end method

.method public static varargs max([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 6
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, result:Ljava/lang/Comparable;,"TT;"
    if-eqz p0, :cond_0

    .line 372
    array-length v4, p0

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_1

    .line 378
    :cond_0
    return-object v0

    .line 372
    :cond_1
    aget-object v1, p0, v2

    .line 373
    .local v1, value:Ljava/lang/Comparable;,"TT;"
    invoke-static {v1, v0, v3}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v5

    if-lez v5, :cond_2

    .line 374
    move-object v0, v1

    .line 372
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs median([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 4
    .parameter "items"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 431
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 432
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 433
    .local v1, sort:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TT;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v1}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    aget-object v0, v2, v3

    check-cast v0, Ljava/lang/Comparable;

    .line 436
    .local v0, result:Ljava/lang/Comparable;,"TT;"
    return-object v0
.end method

.method public static varargs median(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "items"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;[TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    const/4 v4, 0x0

    .line 451
    const-string v2, "null/empty items"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 452
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 453
    const-string v2, "null comparator"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 455
    .local v1, sort:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TT;>;"
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 457
    invoke-virtual {v1}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    aget-object v0, v2, v3

    .line 458
    .local v0, result:Ljava/lang/Object;,"TT;"
    return-object v0
.end method

.method public static varargs min([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, result:Ljava/lang/Comparable;,"TT;"
    if-eqz p0, :cond_0

    .line 347
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 353
    :cond_0
    return-object v0

    .line 347
    :cond_1
    aget-object v1, p0, v2

    .line 348
    .local v1, value:Ljava/lang/Comparable;,"TT;"
    const/4 v4, 0x1

    invoke-static {v1, v0, v4}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v4

    if-gez v4, :cond_2

    .line 349
    move-object v0, v1

    .line 347
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs mode([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "items"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 473
    new-instance v4, Ljava/util/HashMap;

    array-length v7, p0

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 474
    .local v4, occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v8, p0

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_1

    .line 482
    const/4 v5, 0x0

    .line 483
    .local v5, result:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    .line 484
    .local v3, max:I
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v5           #result:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 495
    .end local v3           #max:I
    .end local v4           #occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    :goto_2
    return-object v5

    .line 474
    .restart local v4       #occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    :cond_1
    aget-object v6, p0, v7

    .line 475
    .local v6, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 476
    .local v1, count:Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_2

    .line 477
    new-instance v9, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_3

    .line 484
    .end local v1           #count:Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v6           #t:Ljava/lang/Object;,"TT;"
    .restart local v3       #max:I
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 485
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    .line 486
    .local v0, cmp:I
    if-ne v0, v3, :cond_4

    .line 487
    const/4 v5, 0x0

    .restart local v5       #result:Ljava/lang/Object;,"TT;"
    goto :goto_1

    .line 488
    .end local v5           #result:Ljava/lang/Object;,"TT;"
    :cond_4
    if-le v0, v3, :cond_0

    .line 489
    move v3, v0

    .line 490
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #result:Ljava/lang/Object;,"TT;"
    goto :goto_1

    .line 495
    .end local v0           #cmp:I
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v3           #max:I
    .end local v4           #occurrences:Ljava/util/HashMap;,"Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v5           #result:Ljava/lang/Object;,"TT;"
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 181
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 303
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "obj"
    .parameter "nullStr"

    .prologue
    .line 326
    if-nez p0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
