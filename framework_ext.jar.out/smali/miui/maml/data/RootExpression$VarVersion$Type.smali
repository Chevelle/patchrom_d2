.class final enum Lmiui/maml/data/RootExpression$VarVersion$Type;
.super Ljava/lang/Enum;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/RootExpression$VarVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/RootExpression$VarVersion$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/RootExpression$VarVersion$Type;

.field public static final enum NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

.field public static final enum STR:Lmiui/maml/data/RootExpression$VarVersion$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lmiui/maml/data/RootExpression$VarVersion$Type;

    const-string v1, "NUM"

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/RootExpression$VarVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/RootExpression$VarVersion$Type;->NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

    .line 15
    new-instance v0, Lmiui/maml/data/RootExpression$VarVersion$Type;

    const-string v1, "STR"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/RootExpression$VarVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/RootExpression$VarVersion$Type;->STR:Lmiui/maml/data/RootExpression$VarVersion$Type;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/maml/data/RootExpression$VarVersion$Type;

    sget-object v1, Lmiui/maml/data/RootExpression$VarVersion$Type;->NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/RootExpression$VarVersion$Type;->STR:Lmiui/maml/data/RootExpression$VarVersion$Type;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/maml/data/RootExpression$VarVersion$Type;->$VALUES:[Lmiui/maml/data/RootExpression$VarVersion$Type;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/RootExpression$VarVersion$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lmiui/maml/data/RootExpression$VarVersion$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/RootExpression$VarVersion$Type;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/RootExpression$VarVersion$Type;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lmiui/maml/data/RootExpression$VarVersion$Type;->$VALUES:[Lmiui/maml/data/RootExpression$VarVersion$Type;

    invoke-virtual {v0}, [Lmiui/maml/data/RootExpression$VarVersion$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/RootExpression$VarVersion$Type;

    return-object v0
.end method
