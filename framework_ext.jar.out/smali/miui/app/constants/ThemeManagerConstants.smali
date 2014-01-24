.class public interface abstract Lmiui/app/constants/ThemeManagerConstants;
.super Ljava/lang/Object;
.source "ThemeManagerConstants.java"


# static fields
.field public static final ACTION_PICK_GADGET:Ljava/lang/String; = "miui.intent.action.PICK_GADGET"

.field public static final COMPONENT_CODE_ALARM:Ljava/lang/String; = "alarm"

.field public static final COMPONENT_CODE_ALARMSTYLE:Ljava/lang/String; = "alarmscreen"

.field public static final COMPONENT_CODE_AUDIO_EFFECT:Ljava/lang/String; = "audioeffect"

.field public static final COMPONENT_CODE_BOOT_ANIMATION:Ljava/lang/String; = "bootanimation"

.field public static final COMPONENT_CODE_BOOT_AUDIO:Ljava/lang/String; = "bootaudio"

.field public static final COMPONENT_CODE_CLOCK:Ljava/lang/String; = "clock_"

.field public static final COMPONENT_CODE_CLOCK_1x2:Ljava/lang/String; = "clock_1x2"

.field public static final COMPONENT_CODE_CLOCK_2x2:Ljava/lang/String; = "clock_2x2"

.field public static final COMPONENT_CODE_CLOCK_2x4:Ljava/lang/String; = "clock_2x4"

.field public static final COMPONENT_CODE_CONTACT:Ljava/lang/String; = "contact"

.field public static final COMPONENT_CODE_FONT:Ljava/lang/String; = "fonts"

.field public static final COMPONENT_CODE_FONT_FALLBACK:Ljava/lang/String; = "fonts_fallback"

.field public static final COMPONENT_CODE_FRAMEWORK:Ljava/lang/String; = "framework"

.field public static final COMPONENT_CODE_ICON:Ljava/lang/String; = "icons"

.field public static final COMPONENT_CODE_LAUNCHER:Ljava/lang/String; = "launcher"

.field public static final COMPONENT_CODE_LOCKSCREEN:Ljava/lang/String; = "lockscreen"

.field public static final COMPONENT_CODE_LOCKSTYLE:Ljava/lang/String; = "lockstyle"

.field public static final COMPONENT_CODE_MASK:Ljava/lang/String; = "theme"

.field public static final COMPONENT_CODE_MIWALLPAPER:Ljava/lang/String; = "miwallpaper"

.field public static final COMPONENT_CODE_MMS:Ljava/lang/String; = "mms"

.field public static final COMPONENT_CODE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final COMPONENT_CODE_PHOTO_FRAME:Ljava/lang/String; = "photoframe_"

.field public static final COMPONENT_CODE_PHOTO_FRAME_2x2:Ljava/lang/String; = "photoframe_2x2"

.field public static final COMPONENT_CODE_PHOTO_FRAME_2x4:Ljava/lang/String; = "photoframe_2x4"

.field public static final COMPONENT_CODE_PHOTO_FRAME_4x4:Ljava/lang/String; = "photoframe_4x4"

.field public static final COMPONENT_CODE_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final COMPONENT_CODE_STATUSBAR:Ljava/lang/String; = "statusbar"

.field public static final COMPONENT_CODE_THIRD_APP:Ljava/lang/String; = "thirdapp"

.field public static final COMPONENT_CODE_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final DRM_WHITE_LIST:[Ljava/lang/String; = null

.field public static final GADGET_NAME_CLOCK:Ljava/lang/String; = "clock"

.field public static final GADGET_NAME_PHOTO_FRAME:Ljava/lang/String; = "photoframe"

.field public static final GADGET_SIZE_1x2:Ljava/lang/String; = "1x2"

.field public static final GADGET_SIZE_2x2:Ljava/lang/String; = "2x2"

.field public static final GADGET_SIZE_2x4:Ljava/lang/String; = "2x4"

.field public static final GADGET_SIZE_4x4:Ljava/lang/String; = "4x4"

.field public static final REQUEST_GADGET_NAME:Ljava/lang/String; = "REQUEST_GADGET_NAME"

.field public static final REQUEST_GADGET_SIZE:Ljava/lang/String; = "REQUEST_GADGET_SIZE"

.field public static final REQUEST_RESOURCE_CODE:Ljava/lang/String; = "REQUEST_RESOURCE_CODE"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lock_wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "miwallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "miwallpaper_preview"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "clock_1x2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "clock_2x2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "clock_2x4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "clock_4x4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photoframe_1x2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photoframe_2x2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photoframe_2x4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "photoframe_4x4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "alarmscreen"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "alarmringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "config.config"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/app/constants/ThemeManagerConstants;->DRM_WHITE_LIST:[Ljava/lang/String;

    return-void
.end method
