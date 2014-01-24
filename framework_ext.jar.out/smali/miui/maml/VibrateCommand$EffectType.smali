.class final enum Lmiui/maml/VibrateCommand$EffectType;
.super Ljava/lang/Enum;
.source "VibrateCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/VibrateCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/VibrateCommand$EffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/VibrateCommand$EffectType;

.field public static final enum IVT:Lmiui/maml/VibrateCommand$EffectType;

.field public static final enum Invalid:Lmiui/maml/VibrateCommand$EffectType;

.field public static final enum MagSweep:Lmiui/maml/VibrateCommand$EffectType;

.field public static final enum Periodic:Lmiui/maml/VibrateCommand$EffectType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lmiui/maml/VibrateCommand$EffectType;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v2}, Lmiui/maml/VibrateCommand$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/VibrateCommand$EffectType;->Invalid:Lmiui/maml/VibrateCommand$EffectType;

    .line 26
    new-instance v0, Lmiui/maml/VibrateCommand$EffectType;

    const-string v1, "Periodic"

    invoke-direct {v0, v1, v3}, Lmiui/maml/VibrateCommand$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/VibrateCommand$EffectType;->Periodic:Lmiui/maml/VibrateCommand$EffectType;

    .line 27
    new-instance v0, Lmiui/maml/VibrateCommand$EffectType;

    const-string v1, "MagSweep"

    invoke-direct {v0, v1, v4}, Lmiui/maml/VibrateCommand$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/VibrateCommand$EffectType;->MagSweep:Lmiui/maml/VibrateCommand$EffectType;

    .line 28
    new-instance v0, Lmiui/maml/VibrateCommand$EffectType;

    const-string v1, "IVT"

    invoke-direct {v0, v1, v5}, Lmiui/maml/VibrateCommand$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/VibrateCommand$EffectType;->IVT:Lmiui/maml/VibrateCommand$EffectType;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/maml/VibrateCommand$EffectType;

    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->Invalid:Lmiui/maml/VibrateCommand$EffectType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->Periodic:Lmiui/maml/VibrateCommand$EffectType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->MagSweep:Lmiui/maml/VibrateCommand$EffectType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->IVT:Lmiui/maml/VibrateCommand$EffectType;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/maml/VibrateCommand$EffectType;->$VALUES:[Lmiui/maml/VibrateCommand$EffectType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/VibrateCommand$EffectType;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lmiui/maml/VibrateCommand$EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/VibrateCommand$EffectType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/VibrateCommand$EffectType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lmiui/maml/VibrateCommand$EffectType;->$VALUES:[Lmiui/maml/VibrateCommand$EffectType;

    invoke-virtual {v0}, [Lmiui/maml/VibrateCommand$EffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/VibrateCommand$EffectType;

    return-object v0
.end method
