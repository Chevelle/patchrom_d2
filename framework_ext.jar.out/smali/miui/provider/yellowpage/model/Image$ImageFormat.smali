.class public final enum Lmiui/provider/yellowpage/model/Image$ImageFormat;
.super Ljava/lang/Enum;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/model/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/provider/yellowpage/model/Image$ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/provider/yellowpage/model/Image$ImageFormat;

.field public static final enum JPG:Lmiui/provider/yellowpage/model/Image$ImageFormat;

.field public static final enum PNG:Lmiui/provider/yellowpage/model/Image$ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lmiui/provider/yellowpage/model/Image$ImageFormat;

    const-string v1, "JPG"

    invoke-direct {v0, v1, v2}, Lmiui/provider/yellowpage/model/Image$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/model/Image$ImageFormat;->JPG:Lmiui/provider/yellowpage/model/Image$ImageFormat;

    .line 15
    new-instance v0, Lmiui/provider/yellowpage/model/Image$ImageFormat;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v3}, Lmiui/provider/yellowpage/model/Image$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/model/Image$ImageFormat;->PNG:Lmiui/provider/yellowpage/model/Image$ImageFormat;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/provider/yellowpage/model/Image$ImageFormat;

    sget-object v1, Lmiui/provider/yellowpage/model/Image$ImageFormat;->JPG:Lmiui/provider/yellowpage/model/Image$ImageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/provider/yellowpage/model/Image$ImageFormat;->PNG:Lmiui/provider/yellowpage/model/Image$ImageFormat;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/provider/yellowpage/model/Image$ImageFormat;->$VALUES:[Lmiui/provider/yellowpage/model/Image$ImageFormat;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/provider/yellowpage/model/Image$ImageFormat;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lmiui/provider/yellowpage/model/Image$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/provider/yellowpage/model/Image$ImageFormat;

    return-object v0
.end method

.method public static values()[Lmiui/provider/yellowpage/model/Image$ImageFormat;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lmiui/provider/yellowpage/model/Image$ImageFormat;->$VALUES:[Lmiui/provider/yellowpage/model/Image$ImageFormat;

    invoke-virtual {v0}, [Lmiui/provider/yellowpage/model/Image$ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/provider/yellowpage/model/Image$ImageFormat;

    return-object v0
.end method
