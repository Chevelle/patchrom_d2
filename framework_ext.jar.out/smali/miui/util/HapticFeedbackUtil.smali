.class public Lmiui/util/HapticFeedbackUtil;
.super Ljava/lang/Object;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HapticFeedbackUtil$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEYBOARD_TAP_PATTERN_IVT_IDS:[I = null

.field private static final KEYBOARD_TAP_PATTERN_PROPERTY:[Ljava/lang/String; = null

.field private static final KEY_VIBRATE_EX_ENABLED:Ljava/lang/String; = "ro.haptic.vibrate_ex.enabled"

.field private static final LONG_PRESS_PATTERN_IVT_IDS:[I = null

.field private static final LONG_PRESS_PATTERN_PROPERTY:[Ljava/lang/String; = null

.field public static final RECENT_TASK_EFFECT_ID:I = 0xa

.field private static final RECENT_TASK_PATTERN_IVT_IDS:[I = null

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackUtil"

.field private static final VIRTUAL_DOWN_PATTERN_IVT_IDS:[I = null

.field private static final VIRTUAL_DOWN_PATTERN_PROPERTY:[Ljava/lang/String; = null

.field private static final VIRTUAL_UP_PATTERN_IVT_IDS:[I = null

.field private static final VIRTUAL_UP_PATTERN_PROPERTY:[Ljava/lang/String; = null

.field public static final VOICE_ASSIST_EFFECT_ID:I = 0xb

.field private static final VOICE_ASSIST_PATTERN_IVT_IDS:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImmersion:Z

.field private mImmersionDevice:Lcom/immersion/Device;

.field private mKeyboardTapVibePattern:[J

.field private mKeyboardTapVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

.field private mLongPressVibePattern:[J

.field private mLongPressVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

.field private mRecentTaskVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

.field private mThemeChanged:I

.field private final mVibrateEx:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVirtualKeyUpVibePattern:[J

.field private mVirtualKeyUpVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

.field private mVirtualKeyVibePattern:[J

.field private mVirtualKeyVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

.field private mVoiceAssistantVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 38
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sys.haptic.long.weak"

    aput-object v1, v0, v3

    const-string v1, "sys.haptic.long.normal"

    aput-object v1, v0, v4

    const-string v1, "sys.haptic.long.strong"

    aput-object v1, v0, v5

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->LONG_PRESS_PATTERN_PROPERTY:[Ljava/lang/String;

    .line 44
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sys.haptic.tap.weak"

    aput-object v1, v0, v3

    const-string v1, "sys.haptic.tap.normal"

    aput-object v1, v0, v4

    const-string v1, "sys.haptic.tap.strong"

    aput-object v1, v0, v5

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->KEYBOARD_TAP_PATTERN_PROPERTY:[Ljava/lang/String;

    .line 50
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sys.haptic.down.weak"

    aput-object v1, v0, v3

    const-string v1, "sys.haptic.down.normal"

    aput-object v1, v0, v4

    const-string v1, "sys.haptic.down.strong"

    aput-object v1, v0, v5

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_DOWN_PATTERN_PROPERTY:[Ljava/lang/String;

    .line 56
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sys.haptic.up.weak"

    aput-object v1, v0, v3

    const-string v1, "sys.haptic.up.normal"

    aput-object v1, v0, v4

    const-string v1, "sys.haptic.up.strong"

    aput-object v1, v0, v5

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_UP_PATTERN_PROPERTY:[Ljava/lang/String;

    .line 62
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->LONG_PRESS_PATTERN_IVT_IDS:[I

    .line 68
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->KEYBOARD_TAP_PATTERN_IVT_IDS:[I

    .line 74
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_DOWN_PATTERN_IVT_IDS:[I

    .line 80
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_UP_PATTERN_IVT_IDS:[I

    .line 86
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->RECENT_TASK_PATTERN_IVT_IDS:[I

    .line 92
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->VOICE_ASSIST_PATTERN_IVT_IDS:[I

    return-void

    .line 62
    nop

    :array_0
    .array-data 0x4
        0x6t 0x0t 0x5t 0x6t
        0x4t 0x0t 0x5t 0x6t
        0x5t 0x0t 0x5t 0x6t
    .end array-data

    .line 68
    :array_1
    .array-data 0x4
        0x9t 0x0t 0x5t 0x6t
        0x7t 0x0t 0x5t 0x6t
        0x8t 0x0t 0x5t 0x6t
    .end array-data

    .line 74
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x5t 0x6t
        0x1t 0x0t 0x5t 0x6t
        0x2t 0x0t 0x5t 0x6t
    .end array-data

    .line 80
    :array_3
    .array-data 0x4
        0xct 0x0t 0x5t 0x6t
        0xat 0x0t 0x5t 0x6t
        0xbt 0x0t 0x5t 0x6t
    .end array-data

    .line 86
    :array_4
    .array-data 0x4
        0xft 0x0t 0x5t 0x6t
        0xdt 0x0t 0x5t 0x6t
        0xet 0x0t 0x5t 0x6t
    .end array-data

    .line 92
    :array_5
    .array-data 0x4
        0x12t 0x0t 0x5t 0x6t
        0x10t 0x0t 0x5t 0x6t
        0x11t 0x0t 0x5t 0x6t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "c"
    .parameter "onceOnly"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sget-boolean v1, Lmiui/os/Build;->IS_MITHREE:Z

    iput-boolean v1, p0, Lmiui/util/HapticFeedbackUtil;->mImmersion:Z

    .line 142
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    .line 143
    const-string v1, "ro.haptic.vibrate_ex.enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/util/HapticFeedbackUtil;->mVibrateEx:Z

    .line 144
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    .line 145
    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    .line 152
    :goto_0
    iget-boolean v1, p0, Lmiui/util/HapticFeedbackUtil;->mImmersion:Z

    if-eqz v1, :cond_0

    .line 153
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mImmersionDevice:Lcom/immersion/Device;

    .line 155
    :cond_0
    return-void

    .line 148
    :cond_1
    new-instance v0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;-><init>(Lmiui/util/HapticFeedbackUtil;Landroid/os/Handler;)V

    .line 149
    .local v0, settingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;
    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->observe()V

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getHapticFeedbackLevel()I
    .locals 4

    .prologue
    .line 362
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_level"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 366
    .local v0, level:I
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 335
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 336
    const/4 v2, 0x0

    .line 342
    :cond_0
    return-object v2

    .line 338
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 339
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 340
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadHaptic(Ljava/lang/String;I)[J
    .locals 2
    .parameter "key"
    .parameter "defaultRes"

    .prologue
    .line 296
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, hapString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Lmiui/util/HapticFeedbackUtil;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    .line 302
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lmiui/util/HapticFeedbackUtil;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v1

    goto :goto_0
.end method

.method private loadImmersionHaptic(I)Lcom/immersion/IVTBuffer;
    .locals 9
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 306
    const/16 v5, 0x400

    new-array v4, v5, [B

    .line 307
    .local v4, tmpBuffer:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 308
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 309
    .local v2, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 312
    .local v3, ivtBuffer:Lcom/immersion/IVTBuffer;
    :try_start_0
    iget-object v5, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 315
    .local v1, iLen:I
    :goto_0
    if-lez v1, :cond_0

    .line 316
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 317
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 318
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    goto :goto_0

    .line 321
    :cond_0
    new-instance v3, Lcom/immersion/IVTBuffer;

    .end local v3           #ivtBuffer:Lcom/immersion/IVTBuffer;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/immersion/IVTBuffer;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .restart local v3       #ivtBuffer:Lcom/immersion/IVTBuffer;
    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 328
    :cond_1
    const-string v5, "HapticFeedbackUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/immersion/IVTBuffer;->getEffectCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Effect - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v8}, Lcom/immersion/IVTBuffer;->getEffectName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v3

    .line 323
    .end local v1           #iLen:I
    .end local v3           #ivtBuffer:Lcom/immersion/IVTBuffer;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    .line 324
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 323
    :cond_2
    throw v5
.end method

.method private performImmersionHapticFeedback(I)Z
    .locals 3
    .parameter "effectId"

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0}, Lmiui/util/HapticFeedbackUtil;->updateImmersionSettings(Z)V

    .line 217
    packed-switch p1, :pswitch_data_0

    .line 239
    :goto_0
    :pswitch_0
    return v0

    .line 219
    :pswitch_1
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mImmersionDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mLongPressVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    .line 239
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mImmersionDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    goto :goto_1

    .line 225
    :pswitch_3
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mImmersionDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mKeyboardTapVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    goto :goto_1

    .line 228
    :pswitch_4
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mImmersionDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyUpVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    goto :goto_1

    .line 231
    :pswitch_5
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mImmersionDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mRecentTaskVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    goto :goto_1

    .line 234
    :pswitch_6
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mImmersionDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mVoiceAssistantVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    goto :goto_1

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private stringToLongArray(Ljava/lang/String;)[J
    .locals 7
    .parameter "inpString"

    .prologue
    .line 346
    if-nez p1, :cond_1

    .line 347
    const/4 v4, 0x1

    new-array v2, v4, [J

    .line 348
    .local v2, returnByte:[J
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    .line 358
    :cond_0
    return-object v2

    .line 351
    .end local v2           #returnByte:[J
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, splitStr:[Ljava/lang/String;
    array-length v1, v3

    .line 353
    .local v1, los:I
    new-array v2, v1, [J

    .line 355
    .restart local v2       #returnByte:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 356
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isSupportedEffect(I)Z
    .locals 1
    .parameter "effectId"

    .prologue
    .line 158
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 9
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    iget-object v6, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    move v1, v5

    .line 245
    .local v1, hapticsDisabled:Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    .line 292
    :goto_1
    return v4

    .end local v1           #hapticsDisabled:Z
    :cond_0
    move v1, v4

    .line 243
    goto :goto_0

    .line 249
    .restart local v1       #hapticsDisabled:Z
    :cond_1
    iget-boolean v6, p0, Lmiui/util/HapticFeedbackUtil;->mImmersion:Z

    if-eqz v6, :cond_2

    .line 250
    invoke-direct {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performImmersionHapticFeedback(I)Z

    move-result v4

    goto :goto_1

    .line 253
    :cond_2
    const/4 v3, 0x0

    .line 254
    .local v3, pattern:[J
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 258
    :pswitch_1
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mLongPressVibePattern:[J

    .line 273
    :goto_2
    if-eqz v3, :cond_3

    array-length v6, v3

    if-nez v6, :cond_4

    .line 274
    :cond_3
    const-string v5, "HapticFeedbackUtil"

    const-string v6, "vibrate: null or empty pattern"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 261
    :pswitch_2
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyVibePattern:[J

    .line 262
    goto :goto_2

    .line 264
    :pswitch_3
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mKeyboardTapVibePattern:[J

    .line 265
    goto :goto_2

    .line 267
    :pswitch_4
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyUpVibePattern:[J

    .line 268
    goto :goto_2

    .line 278
    :cond_4
    iget-boolean v6, p0, Lmiui/util/HapticFeedbackUtil;->mVibrateEx:Z

    if-eqz v6, :cond_6

    .line 279
    array-length v4, v3

    new-array v0, v4, [B

    .line 280
    .local v0, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 281
    aget-wide v6, v3, v2

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 283
    :cond_5
    iget-object v4, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, v0}, Landroid/os/Vibrator;->vibrateEx([B)V

    .end local v0           #bytes:[B
    .end local v2           #i:I
    :goto_4
    move v4, v5

    .line 292
    goto :goto_1

    .line 284
    :cond_6
    array-length v6, v3

    if-ne v6, v5, :cond_7

    .line 286
    iget-object v6, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    aget-wide v7, v3, v4

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_4

    .line 289
    :cond_7
    iget-object v4, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    const/4 v6, -0x1

    invoke-virtual {v4, v3, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_4

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateImmersionSettings(Z)V
    .locals 5
    .parameter "forceUpdate"

    .prologue
    .line 198
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    check-cast v3, Landroid/content/res/MiuiResources;

    invoke-virtual {v3}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v2, v3, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 199
    .local v2, themeChanged:I
    iget v3, p0, Lmiui/util/HapticFeedbackUtil;->mThemeChanged:I

    if-ne v3, v2, :cond_0

    if-eqz p1, :cond_1

    .line 200
    :cond_0
    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->getHapticFeedbackLevel()I

    move-result v1

    .line 202
    .local v1, level:I
    :try_start_0
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->LONG_PRESS_PATTERN_IVT_IDS:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lmiui/util/HapticFeedbackUtil;->loadImmersionHaptic(I)Lcom/immersion/IVTBuffer;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mLongPressVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    .line 203
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->KEYBOARD_TAP_PATTERN_IVT_IDS:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lmiui/util/HapticFeedbackUtil;->loadImmersionHaptic(I)Lcom/immersion/IVTBuffer;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mKeyboardTapVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    .line 204
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_DOWN_PATTERN_IVT_IDS:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lmiui/util/HapticFeedbackUtil;->loadImmersionHaptic(I)Lcom/immersion/IVTBuffer;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    .line 205
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_UP_PATTERN_IVT_IDS:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lmiui/util/HapticFeedbackUtil;->loadImmersionHaptic(I)Lcom/immersion/IVTBuffer;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyUpVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    .line 206
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->RECENT_TASK_PATTERN_IVT_IDS:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lmiui/util/HapticFeedbackUtil;->loadImmersionHaptic(I)Lcom/immersion/IVTBuffer;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mRecentTaskVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;

    .line 207
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->VOICE_ASSIST_PATTERN_IVT_IDS:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lmiui/util/HapticFeedbackUtil;->loadImmersionHaptic(I)Lcom/immersion/IVTBuffer;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mVoiceAssistantVibePatternIvtBuffer:Lcom/immersion/IVTBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    iput v2, p0, Lmiui/util/HapticFeedbackUtil;->mThemeChanged:I

    .line 213
    .end local v1           #level:I
    :cond_1
    return-void

    .line 208
    .restart local v1       #level:I
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    const-string v3, "HapticFeedbackUtil"

    const-string v4, "Load Immersion Haptics Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 4

    .prologue
    .line 182
    iget-boolean v1, p0, Lmiui/util/HapticFeedbackUtil;->mImmersion:Z

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/util/HapticFeedbackUtil;->updateImmersionSettings(Z)V

    .line 195
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->getHapticFeedbackLevel()I

    move-result v0

    .line 187
    .local v0, level:I
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->LONG_PRESS_PATTERN_PROPERTY:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    const v3, 0x6060003

    invoke-static {v2, v3}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v1

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mLongPressVibePattern:[J

    .line 189
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_DOWN_PATTERN_PROPERTY:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    const v3, 0x6060005

    invoke-static {v2, v3}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v1

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyVibePattern:[J

    .line 191
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->KEYBOARD_TAP_PATTERN_PROPERTY:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    const v3, 0x6060002

    invoke-static {v2, v3}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v1

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mKeyboardTapVibePattern:[J

    .line 193
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_UP_PATTERN_PROPERTY:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v2, 0x6060008

    invoke-direct {p0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v1

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyUpVibePattern:[J

    goto :goto_0
.end method
