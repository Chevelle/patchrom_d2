.class final enum Landroid/content/pm/ThemeInfo$AttributeIndex;
.super Ljava/lang/Enum;
.source "ThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AttributeIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/pm/ThemeInfo$AttributeIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum AUTHOR_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum COPYRIGHT_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum NOTIFICATION_RINGTONE_FILE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum NOTIFICATION_RINGTONE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum PREVIEW_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum RINGTONE_FILE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum RINGTONE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum STYLE_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum THEME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum THEME_PACKAGE_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum THEME_STYLE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum THUMBNAIL_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

.field public static final enum WALLPAPER_IMAGE_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "THEME_PACKAGE_INDEX"

    invoke-direct {v0, v1, v3}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->THEME_PACKAGE_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 49
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "PREVIEW_INDEX"

    invoke-direct {v0, v1, v4}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->PREVIEW_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 50
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "AUTHOR_INDEX"

    invoke-direct {v0, v1, v5}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->AUTHOR_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 51
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "THEME_INDEX"

    invoke-direct {v0, v1, v6}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->THEME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 52
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "THEME_STYLE_NAME_INDEX"

    invoke-direct {v0, v1, v7}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->THEME_STYLE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 53
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "THUMBNAIL_INDEX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->THUMBNAIL_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 54
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "RINGTONE_FILE_NAME_INDEX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->RINGTONE_FILE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 55
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "NOTIFICATION_RINGTONE_FILE_NAME_INDEX"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->NOTIFICATION_RINGTONE_FILE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 56
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "WALLPAPER_IMAGE_INDEX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->WALLPAPER_IMAGE_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 57
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "COPYRIGHT_INDEX"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->COPYRIGHT_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 58
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "RINGTONE_NAME_INDEX"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->RINGTONE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 59
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "NOTIFICATION_RINGTONE_NAME_INDEX"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->NOTIFICATION_RINGTONE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 60
    new-instance v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    const-string v1, "STYLE_INDEX"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ThemeInfo$AttributeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->STYLE_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    .line 47
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/content/pm/ThemeInfo$AttributeIndex;

    sget-object v1, Landroid/content/pm/ThemeInfo$AttributeIndex;->THEME_PACKAGE_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v1, v0, v3

    sget-object v1, Landroid/content/pm/ThemeInfo$AttributeIndex;->PREVIEW_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v1, v0, v4

    sget-object v1, Landroid/content/pm/ThemeInfo$AttributeIndex;->AUTHOR_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v1, v0, v5

    sget-object v1, Landroid/content/pm/ThemeInfo$AttributeIndex;->THEME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v1, v0, v6

    sget-object v1, Landroid/content/pm/ThemeInfo$AttributeIndex;->THEME_STYLE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/content/pm/ThemeInfo$AttributeIndex;->THUMBNAIL_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/content/pm/ThemeInfo$AttributeIndex;->RINGTONE_FILE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/content/pm/ThemeInfo$AttributeIndex;->NOTIFICATION_RINGTONE_FILE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/content/pm/ThemeInfo$AttributeIndex;->WALLPAPER_IMAGE_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/content/pm/ThemeInfo$AttributeIndex;->COPYRIGHT_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/content/pm/ThemeInfo$AttributeIndex;->RINGTONE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/content/pm/ThemeInfo$AttributeIndex;->NOTIFICATION_RINGTONE_NAME_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/content/pm/ThemeInfo$AttributeIndex;->STYLE_INDEX:Landroid/content/pm/ThemeInfo$AttributeIndex;

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->$VALUES:[Landroid/content/pm/ThemeInfo$AttributeIndex;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(I)Landroid/content/pm/ThemeInfo$AttributeIndex;
    .locals 1
    .parameter "ordinal"

    .prologue
    .line 63
    invoke-static {}, Landroid/content/pm/ThemeInfo$AttributeIndex;->values()[Landroid/content/pm/ThemeInfo$AttributeIndex;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/pm/ThemeInfo$AttributeIndex;
    .locals 1
    .parameter "name"

    .prologue
    .line 47
    const-class v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ThemeInfo$AttributeIndex;

    return-object v0
.end method

.method public static values()[Landroid/content/pm/ThemeInfo$AttributeIndex;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/content/pm/ThemeInfo$AttributeIndex;->$VALUES:[Landroid/content/pm/ThemeInfo$AttributeIndex;

    invoke-virtual {v0}, [Landroid/content/pm/ThemeInfo$AttributeIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ThemeInfo$AttributeIndex;

    return-object v0
.end method
