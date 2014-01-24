.class final enum Lmiui/maml/data/StringFunctions$Fun;
.super Ljava/lang/Enum;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/StringFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/StringFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum INVALID:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->INVALID:Lmiui/maml/data/StringFunctions$Fun;

    .line 20
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_TOLOWER"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    .line 21
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_TOUPPER"

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    .line 22
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_TRIM"

    invoke-direct {v0, v1, v6}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    .line 23
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_REPLACE"

    invoke-direct {v0, v1, v7}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    .line 24
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_REPLACEALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    .line 25
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_REPLACEFIRST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    .line 27
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_CONTAINS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    .line 28
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_STARTWITH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    .line 29
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_ENDSWITH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    .line 30
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_ISEMPTY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    .line 31
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_MATCHES"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    .line 32
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_INDEXOF"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    .line 33
    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_LASTINDEXOF"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    .line 17
    const/16 v0, 0xe

    new-array v0, v0, [Lmiui/maml/data/StringFunctions$Fun;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->INVALID:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->$VALUES:[Lmiui/maml/data/StringFunctions$Fun;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/StringFunctions$Fun;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lmiui/maml/data/StringFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/StringFunctions$Fun;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/StringFunctions$Fun;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lmiui/maml/data/StringFunctions$Fun;->$VALUES:[Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v0}, [Lmiui/maml/data/StringFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/StringFunctions$Fun;

    return-object v0
.end method
