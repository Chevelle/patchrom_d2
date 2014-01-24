.class public final enum Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;
.super Ljava/lang/Enum;
.source "YellowPageAvatar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/model/YellowPageAvatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "YellowPageAvatarFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum PHOTO_NAME:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum PHOTO_NUMBER:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum PHOTO_YID:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum THUMBNAIL_NAME:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum THUMBNAIL_NUMBER:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum THUMBNAIL_YID:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "PHOTO_NUMBER"

    invoke-direct {v0, v1, v3}, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    .line 24
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "THUMBNAIL_NUMBER"

    invoke-direct {v0, v1, v4}, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    .line 25
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "PHOTO_YID"

    invoke-direct {v0, v1, v5}, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    .line 26
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "THUMBNAIL_YID"

    invoke-direct {v0, v1, v6}, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    .line 27
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "PHOTO_NAME"

    invoke-direct {v0, v1, v7}, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    .line 28
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "THUMBNAIL_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->$VALUES:[Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    return-object v0
.end method

.method public static values()[Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->$VALUES:[Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-virtual {v0}, [Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    return-object v0
.end method
