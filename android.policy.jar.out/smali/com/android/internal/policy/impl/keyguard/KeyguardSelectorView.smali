.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SecuritySelectorView"


# instance fields
.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private mCreationOrientation:I

.field private mFadeView:Landroid/view/View;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsBouncing:Z

.field private mIsScreenLarge:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mStoredTargets:[Ljava/lang/String;

.field private mTargetOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 194
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCreationOrientation:I

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 157
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 170
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 199
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mStoredTargets:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCreationOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsScreenLarge:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mTargetOffset:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    return v0
.end method

.method private getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 13
    .parameter "back"
    .parameter "front"
    .parameter "inset"
    .parameter "frontBlank"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 228
    .local v10, res:Landroid/content/res/Resources;
    const/4 v0, 0x2

    new-array v9, v0, [Landroid/graphics/drawable/InsetDrawable;

    .line 229
    .local v9, inactivelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v0, 0x2

    new-array v7, v0, [Landroid/graphics/drawable/InsetDrawable;

    .line 230
    .local v7, activelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v12, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const v1, 0x1080317

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v9, v12

    .line 231
    const/4 v12, 0x1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v9, v12

    .line 232
    const/4 v12, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v7, v12

    .line 233
    const/4 v12, 0x1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p4, :cond_0

    const v1, 0x106000d

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v7, v12

    .line 234
    new-instance v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 235
    .local v11, states:Landroid/graphics/drawable/StateListDrawable;
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 236
    .local v8, inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 237
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 238
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 239
    .local v6, activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 240
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 241
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v11, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 242
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v11, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 243
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v11, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 244
    return-object v11

    .end local v6           #activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v8           #inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v11           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    move-object v1, p2

    .line 233
    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"

    .prologue
    const/high16 v11, 0x41c0

    const/4 v10, 0x0

    .line 426
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 428
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 430
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 431
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 432
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 433
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 434
    .local v5, rectF:Landroid/graphics/RectF;
    const/high16 v6, 0x41c0

    .line 435
    .local v6, roundPx:F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 436
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 437
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    invoke-virtual {v0, v5, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 439
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 440
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 441
    return-object v2
.end method

.method private updateTargets()V
    .locals 14

    .prologue
    .line 257
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    .line 258
    .local v2, currentUserHandle:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    .line 259
    .local v6, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v5

    .line 260
    .local v5, disabledFeatures:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/lit8 v11, v5, 0x2

    if-eqz v11, :cond_4

    const/4 v10, 0x1

    .line 262
    .local v10, secureCameraDisabled:Z
    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v10, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 264
    .local v0, cameraDisabledByAdmin:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 265
    .local v7, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v4

    .line 266
    .local v4, disabledBySimState:Z
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.hardware.camera"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 267
    .local v1, cameraPresent:Z
    const v11, 0x1080297

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v9

    .line 270
    .local v9, searchTargetPresent:Z
    if-eqz v0, :cond_6

    .line 271
    const-string v11, "SecuritySelectorView"

    const-string v12, "Camera disabled by Device Policy"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    :goto_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "user_setup_complete"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v3, 0x1

    .line 280
    .local v3, currentUserSetup:Z
    :goto_3
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v12, "search"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/SearchManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v13, -0x2

    invoke-virtual {v11, v12, v13}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_8

    const/4 v8, 0x1

    .line 283
    .local v8, searchActionAvailable:Z
    :goto_4
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    if-nez v3, :cond_9

    :cond_2
    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    .line 285
    if-nez v4, :cond_3

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    if-nez v3, :cond_a

    :cond_3
    const/4 v11, 0x1

    :goto_6
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateResources()V

    .line 288
    return-void

    .line 260
    .end local v0           #cameraDisabledByAdmin:Z
    .end local v1           #cameraPresent:Z
    .end local v3           #currentUserSetup:Z
    .end local v4           #disabledBySimState:Z
    .end local v7           #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v8           #searchActionAvailable:Z
    .end local v9           #searchTargetPresent:Z
    .end local v10           #secureCameraDisabled:Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 262
    .restart local v10       #secureCameraDisabled:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 272
    .restart local v0       #cameraDisabledByAdmin:Z
    .restart local v1       #cameraPresent:Z
    .restart local v4       #disabledBySimState:Z
    .restart local v7       #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .restart local v9       #searchTargetPresent:Z
    :cond_6
    if-eqz v4, :cond_1

    .line 273
    const-string v11, "SecuritySelectorView"

    const-string v12, "Camera disabled by Sim State"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 275
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 280
    .restart local v3       #currentUserSetup:Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 283
    .restart local v8       #searchActionAvailable:Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 285
    :cond_a
    const/4 v11, 0x0

    goto :goto_6
.end method


# virtual methods
.method doTransition(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 448
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 450
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 497
    return-void
.end method

.method public isScreenLarge()Z
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 221
    .local v1, screenSize:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 223
    .local v0, isScreenLarge:Z
    :goto_0
    return v0

    .line 221
    .end local v0           #isScreenLarge:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetPresent(I)Z
    .locals 2
    .parameter "resId"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 205
    const v1, 0x10202af

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 207
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V

    .line 209
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 210
    const v1, 0x10202fc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, bouncerFrameView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 212
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 473
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 478
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 463
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 0
    .parameter "carrierArea"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    .line 216
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 454
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 458
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 490
    return-void
.end method

.method public showUsabilityHint()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 254
    return-void
.end method

.method public updateResources()V
    .locals 39

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_targets"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    .line 293
    .local v34, storedVal:Ljava/lang/String;
    if-nez v34, :cond_3

    .line 295
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v6, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v7, "search"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v8, -0x2

    invoke-virtual {v6, v7, v8}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v24

    .line 298
    .local v24, intent:Landroid/content/Intent;
    if-eqz v24, :cond_0

    .line 302
    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    .line 303
    .local v15, component:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v7, "com.android.systemui.action_assist_icon_google"

    const v8, 0x1080297

    invoke-virtual {v6, v15, v7, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v31

    .line 307
    .local v31, replaced:Z
    if-nez v31, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v7, "com.android.systemui.action_assist_icon"

    const v8, 0x1080297

    invoke-virtual {v6, v15, v7, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 310
    const-string v6, "SecuritySelectorView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t grab icon from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v15           #component:Landroid/content/ComponentName;
    .end local v24           #intent:Landroid/content/Intent;
    .end local v31           #replaced:Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v8, 0x10802f2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v7, v8, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 317
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v8, 0x1080297

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v8, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 321
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setMagneticTargets(Z)V

    .line 423
    :goto_2
    return-void

    .line 315
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 317
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 323
    :cond_3
    const-string v6, "\\|"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mStoredTargets:[Ljava/lang/String;

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isScreenLarge()Z

    move-result v6

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsScreenLarge:Z

    .line 325
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v33, storedDraw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    .line 327
    .local v32, res:Landroid/content/res/Resources;
    const v6, 0x1050058

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 328
    .local v35, targetInset:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 329
    .local v27, packMan:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCreationOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    const/16 v25, 0x1

    .line 330
    .local v25, isLandscape:Z
    :goto_3
    const v6, 0x1080335

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 331
    .local v5, blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 333
    .local v4, activeBack:Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setMagneticTargets(Z)V

    .line 335
    const v6, 0x1080317

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 336
    .local v12, blankInActiveDrawable:Landroid/graphics/drawable/Drawable;
    const v6, 0x1080339

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v37

    .line 338
    .local v37, unlockActiveDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsScreenLarge:Z

    if-nez v6, :cond_a

    const/4 v6, 0x2

    :goto_4
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mTargetOffset:I

    .line 339
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mTargetOffset:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 340
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_4
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v7, 0x1080338

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const/16 v21, 0x0

    .local v21, i:I
    :goto_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mTargetOffset:I

    rsub-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v21

    if-ge v0, v6, :cond_13

    .line 346
    move/from16 v36, v35

    .line 347
    .local v36, tmpInset:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mStoredTargets:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_12

    .line 348
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mStoredTargets:[Ljava/lang/String;

    aget-object v38, v6, v21

    .line 349
    .local v38, uri:Ljava/lang/String;
    const-string v6, "empty"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 351
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, v38

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v23

    .line 352
    .local v23, in:Landroid/content/Intent;
    const/16 v19, 0x0

    .line 353
    .local v19, front:Landroid/graphics/drawable/Drawable;
    move-object v11, v4

    .line 354
    .local v11, back:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 355
    .local v20, frontBlank:Z
    const-string v6, "icon_file"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 356
    const-string v6, "icon_file"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 357
    .local v18, fSource:Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 358
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v17, fPath:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 360
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    .end local v19           #front:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 361
    .restart local v19       #front:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v36, v36, 0x5

    .line 392
    .end local v17           #fPath:Ljava/io/File;
    .end local v18           #fSource:Ljava/lang/String;
    :cond_5
    :goto_6
    if-eqz v19, :cond_6

    if-nez v11, :cond_7

    .line 393
    :cond_6
    const/4 v6, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 394
    .local v10, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v10, :cond_d

    .line 395
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 400
    .end local v10           #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_7
    :goto_7
    new-instance v26, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v36

    move/from16 v3, v20

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 401
    .local v26, nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 402
    .local v14, compName:Landroid/content/ComponentName;
    if-eqz v14, :cond_8

    .line 403
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 404
    .local v13, cls:Ljava/lang/String;
    const-string v6, "com.android.camera.CameraLauncher"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 405
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    if-nez v6, :cond_e

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 410
    .end local v13           #cls:Ljava/lang/String;
    :cond_8
    :goto_9
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v11           #back:Landroid/graphics/drawable/Drawable;
    .end local v14           #compName:Landroid/content/ComponentName;
    .end local v19           #front:Landroid/graphics/drawable/Drawable;
    .end local v20           #frontBlank:Z
    .end local v23           #in:Landroid/content/Intent;
    .end local v26           #nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v38           #uri:Ljava/lang/String;
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 329
    .end local v4           #activeBack:Landroid/graphics/drawable/InsetDrawable;
    .end local v5           #blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    .end local v12           #blankInActiveDrawable:Landroid/graphics/drawable/Drawable;
    .end local v21           #i:I
    .end local v25           #isLandscape:Z
    .end local v36           #tmpInset:I
    .end local v37           #unlockActiveDrawable:Landroid/graphics/drawable/Drawable;
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 338
    .restart local v4       #activeBack:Landroid/graphics/drawable/InsetDrawable;
    .restart local v5       #blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v12       #blankInActiveDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v25       #isLandscape:Z
    .restart local v37       #unlockActiveDrawable:Landroid/graphics/drawable/Drawable;
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 364
    .restart local v11       #back:Landroid/graphics/drawable/Drawable;
    .restart local v19       #front:Landroid/graphics/drawable/Drawable;
    .restart local v20       #frontBlank:Z
    .restart local v21       #i:I
    .restart local v23       #in:Landroid/content/Intent;
    .restart local v36       #tmpInset:I
    .restart local v38       #uri:Ljava/lang/String;
    :cond_b
    const-string v6, "icon_resource"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 365
    const-string v6, "icon_resource"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 366
    .local v30, rSource:Ljava/lang/String;
    const-string v6, "icon_package"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v29

    .line 367
    .local v29, rPackage:Ljava/lang/String;
    if-eqz v30, :cond_5

    .line 368
    if-eqz v29, :cond_c

    .line 370
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v28

    .line 371
    .local v28, rContext:Landroid/content/Context;
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "drawable"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 372
    .local v22, id:I
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 373
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "_normal"

    const-string v8, "_activated"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    move-object/from16 v0, v29

    invoke-virtual {v6, v7, v8, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 375
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 376
    const/16 v36, 0x0

    .line 377
    const/16 v20, 0x1

    goto/16 :goto_6

    .line 378
    .end local v22           #id:I
    .end local v28           #rContext:Landroid/content/Context;
    :catch_0
    move-exception v16

    .line 379
    .local v16, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 411
    .end local v11           #back:Landroid/graphics/drawable/Drawable;
    .end local v16           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19           #front:Landroid/graphics/drawable/Drawable;
    .end local v20           #frontBlank:Z
    .end local v23           #in:Landroid/content/Intent;
    .end local v29           #rPackage:Ljava/lang/String;
    .end local v30           #rSource:Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 412
    .local v16, e:Ljava/lang/Exception;
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 380
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v11       #back:Landroid/graphics/drawable/Drawable;
    .restart local v19       #front:Landroid/graphics/drawable/Drawable;
    .restart local v20       #frontBlank:Z
    .restart local v23       #in:Landroid/content/Intent;
    .restart local v29       #rPackage:Ljava/lang/String;
    .restart local v30       #rSource:Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 381
    .local v16, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_6

    .line 384
    .end local v16           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_c
    const-string v6, "drawable"

    const-string v7, "android"

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 385
    const-string v6, "_normal"

    const-string v7, "_activated"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "android"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 387
    const/16 v36, 0x0

    .line 388
    const/16 v20, 0x1

    goto/16 :goto_6

    .line 397
    .end local v29           #rPackage:Ljava/lang/String;
    .end local v30           #rSource:Ljava/lang/String;
    .restart local v10       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_d
    const v6, 0x1080093

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto/16 :goto_7

    .line 405
    .end local v10           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v13       #cls:Ljava/lang/String;
    .restart local v14       #compName:Landroid/content/ComponentName;
    .restart local v26       #nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 406
    :cond_f
    const-string v6, "SearchActivity"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 407
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v6, :cond_10

    const/4 v6, 0x1

    :goto_b
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    :cond_10
    const/4 v6, 0x0

    goto :goto_b

    .line 415
    .end local v11           #back:Landroid/graphics/drawable/Drawable;
    .end local v13           #cls:Ljava/lang/String;
    .end local v14           #compName:Landroid/content/ComponentName;
    .end local v19           #front:Landroid/graphics/drawable/Drawable;
    .end local v20           #frontBlank:Z
    .end local v23           #in:Landroid/content/Intent;
    .end local v26           #nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_11
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v36

    invoke-direct {v0, v1, v12, v2, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 418
    .end local v38           #uri:Ljava/lang/String;
    :cond_12
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 421
    .end local v36           #tmpInset:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method
