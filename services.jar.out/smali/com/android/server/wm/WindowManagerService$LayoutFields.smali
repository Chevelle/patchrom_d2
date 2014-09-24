.class Lcom/android/server/wm/WindowManagerService$LayoutFields;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutFields"
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2


# instance fields
.field private mButtonBrightness:F

.field mDisplayHasContent:Z

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field mObscureApplicationContentOnSecondaryDisplays:Z

.field private mObscured:Z

.field mOrientationChangeComplete:Z

.field private mScreenBrightness:F

.field private mSyswin:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v1, -0x4080

    const/4 v2, 0x0

    .line 585
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    .line 594
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    .line 596
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 597
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 598
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    .line 599
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    .line 600
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    .line 601
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    .line 602
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    .line 603
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    .line 604
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    .line 608
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:Z

    .line 612
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscureApplicationContentOnSecondaryDisplays:Z

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 585
    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return p1
.end method
