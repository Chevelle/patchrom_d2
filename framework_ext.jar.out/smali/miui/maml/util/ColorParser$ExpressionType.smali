.class final enum Lmiui/maml/util/ColorParser$ExpressionType;
.super Ljava/lang/Enum;
.source "ColorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/ColorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ExpressionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/util/ColorParser$ExpressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/util/ColorParser$ExpressionType;

.field public static final enum ARGB:Lmiui/maml/util/ColorParser$ExpressionType;

.field public static final enum CONST:Lmiui/maml/util/ColorParser$ExpressionType;

.field public static final enum INVALID:Lmiui/maml/util/ColorParser$ExpressionType;

.field public static final enum VARIABLE:Lmiui/maml/util/ColorParser$ExpressionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lmiui/maml/util/ColorParser$ExpressionType;

    const-string v1, "CONST"

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->CONST:Lmiui/maml/util/ColorParser$ExpressionType;

    .line 28
    new-instance v0, Lmiui/maml/util/ColorParser$ExpressionType;

    const-string v1, "VARIABLE"

    invoke-direct {v0, v1, v3}, Lmiui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lmiui/maml/util/ColorParser$ExpressionType;

    .line 29
    new-instance v0, Lmiui/maml/util/ColorParser$ExpressionType;

    const-string v1, "ARGB"

    invoke-direct {v0, v1, v4}, Lmiui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->ARGB:Lmiui/maml/util/ColorParser$ExpressionType;

    .line 30
    new-instance v0, Lmiui/maml/util/ColorParser$ExpressionType;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lmiui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->INVALID:Lmiui/maml/util/ColorParser$ExpressionType;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/maml/util/ColorParser$ExpressionType;

    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->CONST:Lmiui/maml/util/ColorParser$ExpressionType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lmiui/maml/util/ColorParser$ExpressionType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->ARGB:Lmiui/maml/util/ColorParser$ExpressionType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->INVALID:Lmiui/maml/util/ColorParser$ExpressionType;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->$VALUES:[Lmiui/maml/util/ColorParser$ExpressionType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/util/ColorParser$ExpressionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ColorParser$ExpressionType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/util/ColorParser$ExpressionType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->$VALUES:[Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v0}, [Lmiui/maml/util/ColorParser$ExpressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/util/ColorParser$ExpressionType;

    return-object v0
.end method
