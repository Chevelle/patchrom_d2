.class final enum Lmiui/provider/yellowpage/utils/ImageLoader$State;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/provider/yellowpage/utils/ImageLoader$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/provider/yellowpage/utils/ImageLoader$State;

.field public static final enum LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

.field public static final enum LOADING:Lmiui/provider/yellowpage/utils/ImageLoader$State;

.field public static final enum NEEDED:Lmiui/provider/yellowpage/utils/ImageLoader$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lmiui/provider/yellowpage/utils/ImageLoader$State;

    const-string v1, "NEEDED"

    invoke-direct {v0, v1, v2}, Lmiui/provider/yellowpage/utils/ImageLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/utils/ImageLoader$State;->NEEDED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    new-instance v0, Lmiui/provider/yellowpage/utils/ImageLoader$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lmiui/provider/yellowpage/utils/ImageLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    new-instance v0, Lmiui/provider/yellowpage/utils/ImageLoader$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lmiui/provider/yellowpage/utils/ImageLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADING:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/provider/yellowpage/utils/ImageLoader$State;

    sget-object v1, Lmiui/provider/yellowpage/utils/ImageLoader$State;->NEEDED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADING:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/provider/yellowpage/utils/ImageLoader$State;->$VALUES:[Lmiui/provider/yellowpage/utils/ImageLoader$State;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/provider/yellowpage/utils/ImageLoader$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lmiui/provider/yellowpage/utils/ImageLoader$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/provider/yellowpage/utils/ImageLoader$State;

    return-object v0
.end method

.method public static values()[Lmiui/provider/yellowpage/utils/ImageLoader$State;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lmiui/provider/yellowpage/utils/ImageLoader$State;->$VALUES:[Lmiui/provider/yellowpage/utils/ImageLoader$State;

    invoke-virtual {v0}, [Lmiui/provider/yellowpage/utils/ImageLoader$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/provider/yellowpage/utils/ImageLoader$State;

    return-object v0
.end method
