.class final enum Lmiui/widget/HeiHeiGestureView$DetectingStage;
.super Ljava/lang/Enum;
.source "HeiHeiGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/HeiHeiGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DetectingStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/widget/HeiHeiGestureView$DetectingStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/widget/HeiHeiGestureView$DetectingStage;

.field public static final enum MATCHED:Lmiui/widget/HeiHeiGestureView$DetectingStage;

.field public static final enum MOVE_DOWN:Lmiui/widget/HeiHeiGestureView$DetectingStage;

.field public static final enum MOVE_UP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

.field public static final enum STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

.field public static final enum WAITING:Lmiui/widget/HeiHeiGestureView$DetectingStage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v2}, Lmiui/widget/HeiHeiGestureView$DetectingStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    .line 34
    new-instance v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v3}, Lmiui/widget/HeiHeiGestureView$DetectingStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->WAITING:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    .line 35
    new-instance v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;

    const-string v1, "MOVE_DOWN"

    invoke-direct {v0, v1, v4}, Lmiui/widget/HeiHeiGestureView$DetectingStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    .line 36
    new-instance v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;

    const-string v1, "MOVE_UP"

    invoke-direct {v0, v1, v5}, Lmiui/widget/HeiHeiGestureView$DetectingStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    .line 37
    new-instance v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;

    const-string v1, "MATCHED"

    invoke-direct {v0, v1, v6}, Lmiui/widget/HeiHeiGestureView$DetectingStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MATCHED:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lmiui/widget/HeiHeiGestureView$DetectingStage;

    sget-object v1, Lmiui/widget/HeiHeiGestureView$DetectingStage;->STOP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/widget/HeiHeiGestureView$DetectingStage;->WAITING:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/widget/HeiHeiGestureView$DetectingStage;->MATCHED:Lmiui/widget/HeiHeiGestureView$DetectingStage;

    aput-object v1, v0, v6

    sput-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->$VALUES:[Lmiui/widget/HeiHeiGestureView$DetectingStage;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/widget/HeiHeiGestureView$DetectingStage;
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;

    return-object v0
.end method

.method public static values()[Lmiui/widget/HeiHeiGestureView$DetectingStage;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lmiui/widget/HeiHeiGestureView$DetectingStage;->$VALUES:[Lmiui/widget/HeiHeiGestureView$DetectingStage;

    invoke-virtual {v0}, [Lmiui/widget/HeiHeiGestureView$DetectingStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/widget/HeiHeiGestureView$DetectingStage;

    return-object v0
.end method
