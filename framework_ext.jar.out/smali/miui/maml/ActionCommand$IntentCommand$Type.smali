.class public final enum Lmiui/maml/ActionCommand$IntentCommand$Type;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$IntentCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/ActionCommand$IntentCommand$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$IntentCommand$Type;

.field public static final enum DOUBLE:Lmiui/maml/ActionCommand$IntentCommand$Type;

.field public static final enum FLOAT:Lmiui/maml/ActionCommand$IntentCommand$Type;

.field public static final enum INT:Lmiui/maml/ActionCommand$IntentCommand$Type;

.field public static final enum LONG:Lmiui/maml/ActionCommand$IntentCommand$Type;

.field public static final enum STRING:Lmiui/maml/ActionCommand$IntentCommand$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 839
    new-instance v0, Lmiui/maml/ActionCommand$IntentCommand$Type;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v2}, Lmiui/maml/ActionCommand$IntentCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$Type;->STRING:Lmiui/maml/ActionCommand$IntentCommand$Type;

    .line 840
    new-instance v0, Lmiui/maml/ActionCommand$IntentCommand$Type;

    const-string v1, "INT"

    invoke-direct {v0, v1, v3}, Lmiui/maml/ActionCommand$IntentCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$Type;->INT:Lmiui/maml/ActionCommand$IntentCommand$Type;

    .line 841
    new-instance v0, Lmiui/maml/ActionCommand$IntentCommand$Type;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lmiui/maml/ActionCommand$IntentCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$Type;->LONG:Lmiui/maml/ActionCommand$IntentCommand$Type;

    .line 842
    new-instance v0, Lmiui/maml/ActionCommand$IntentCommand$Type;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v5}, Lmiui/maml/ActionCommand$IntentCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$Type;->FLOAT:Lmiui/maml/ActionCommand$IntentCommand$Type;

    .line 843
    new-instance v0, Lmiui/maml/ActionCommand$IntentCommand$Type;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v6}, Lmiui/maml/ActionCommand$IntentCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$Type;->DOUBLE:Lmiui/maml/ActionCommand$IntentCommand$Type;

    .line 838
    const/4 v0, 0x5

    new-array v0, v0, [Lmiui/maml/ActionCommand$IntentCommand$Type;

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->STRING:Lmiui/maml/ActionCommand$IntentCommand$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->INT:Lmiui/maml/ActionCommand$IntentCommand$Type;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->LONG:Lmiui/maml/ActionCommand$IntentCommand$Type;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->FLOAT:Lmiui/maml/ActionCommand$IntentCommand$Type;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->DOUBLE:Lmiui/maml/ActionCommand$IntentCommand$Type;

    aput-object v1, v0, v6

    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand$Type;->$VALUES:[Lmiui/maml/ActionCommand$IntentCommand$Type;

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
    .line 838
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$IntentCommand$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 838
    const-class v0, Lmiui/maml/ActionCommand$IntentCommand$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$IntentCommand$Type;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$IntentCommand$Type;
    .locals 1

    .prologue
    .line 838
    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand$Type;->$VALUES:[Lmiui/maml/ActionCommand$IntentCommand$Type;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$IntentCommand$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$IntentCommand$Type;

    return-object v0
.end method
