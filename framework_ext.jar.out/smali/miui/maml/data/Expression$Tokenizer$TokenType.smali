.class public final enum Lmiui/maml/data/Expression$Tokenizer$TokenType;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/Expression$Tokenizer$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VARSTR:Lmiui/maml/data/Expression$Tokenizer$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 30
    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "VAR"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 31
    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "VARSTR"

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VARSTR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 32
    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "NUM"

    invoke-direct {v0, v1, v6}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 33
    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "STR"

    invoke-direct {v0, v1, v7}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 34
    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "OPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 35
    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "FUN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 36
    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "BRACKET"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VARSTR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->$VALUES:[Lmiui/maml/data/Expression$Tokenizer$TokenType;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/Expression$Tokenizer$TokenType;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/Expression$Tokenizer$TokenType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->$VALUES:[Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v0}, [Lmiui/maml/data/Expression$Tokenizer$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/Expression$Tokenizer$TokenType;

    return-object v0
.end method
