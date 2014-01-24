.class public final enum Lmiui/maml/elements/ScreenElement$Align;
.super Ljava/lang/Enum;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/elements/ScreenElement$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/elements/ScreenElement$Align;

.field public static final enum CENTER:Lmiui/maml/elements/ScreenElement$Align;

.field public static final enum LEFT:Lmiui/maml/elements/ScreenElement$Align;

.field public static final enum RIGHT:Lmiui/maml/elements/ScreenElement$Align;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lmiui/maml/elements/ScreenElement$Align;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/ScreenElement$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    new-instance v0, Lmiui/maml/elements/ScreenElement$Align;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lmiui/maml/elements/ScreenElement$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    new-instance v0, Lmiui/maml/elements/ScreenElement$Align;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lmiui/maml/elements/ScreenElement$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/maml/elements/ScreenElement$Align;

    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/maml/elements/ScreenElement$Align;->$VALUES:[Lmiui/maml/elements/ScreenElement$Align;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement$Align;
    .locals 1
    .parameter "name"

    .prologue
    .line 91
    const-class v0, Lmiui/maml/elements/ScreenElement$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement$Align;

    return-object v0
.end method

.method public static values()[Lmiui/maml/elements/ScreenElement$Align;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lmiui/maml/elements/ScreenElement$Align;->$VALUES:[Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v0}, [Lmiui/maml/elements/ScreenElement$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/elements/ScreenElement$Align;

    return-object v0
.end method
