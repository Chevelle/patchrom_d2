.class final enum Lmiui/maml/data/BaseFunctions$Fun;
.super Ljava/lang/Enum;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/BaseFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ABS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ACOS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ASIN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ATAN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum COS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum COSH:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum EQ:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum EQS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum GE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum GT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum INT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum INVALID:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LEN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum MAX:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum MIN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum NE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum NOT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum RAND:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ROUND:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SIN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SINH:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SQRT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum TAN:Lmiui/maml/data/BaseFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->INVALID:Lmiui/maml/data/BaseFunctions$Fun;

    .line 18
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "RAND"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    .line 19
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "SIN"

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    .line 20
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "COS"

    invoke-direct {v0, v1, v6}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    .line 21
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "TAN"

    invoke-direct {v0, v1, v7}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    .line 22
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "ASIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    .line 23
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "ACOS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    .line 24
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "ATAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    .line 25
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "SINH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    .line 26
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "COSH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    .line 27
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "SQRT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    .line 28
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "ABS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    .line 29
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "LEN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    .line 30
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "ROUND"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    .line 31
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "INT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    .line 32
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "MIN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    .line 33
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "MAX"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    .line 34
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "DIGIT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    .line 36
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "EQ"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    .line 37
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "NE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    .line 38
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "GE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    .line 39
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "GT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    .line 40
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "LE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    .line 41
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "LT"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    .line 42
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "ISNULL"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    .line 43
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "NOT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    .line 45
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "IFELSE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    .line 49
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "EQS"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    .line 50
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v1, "SUBSTR"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    .line 16
    const/16 v0, 0x1d

    new-array v0, v0, [Lmiui/maml/data/BaseFunctions$Fun;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->INVALID:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->$VALUES:[Lmiui/maml/data/BaseFunctions$Fun;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/BaseFunctions$Fun;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lmiui/maml/data/BaseFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/BaseFunctions$Fun;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/BaseFunctions$Fun;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lmiui/maml/data/BaseFunctions$Fun;->$VALUES:[Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v0}, [Lmiui/maml/data/BaseFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/BaseFunctions$Fun;

    return-object v0
.end method
