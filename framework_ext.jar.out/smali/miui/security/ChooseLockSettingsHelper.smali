.class public final Lmiui/security/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field public static final DISABLE_ACCESS_CONTROL:I = 0x1

.field public static final DISABLE_AC_FOR_PRIVACY_MODE:I = 0x3

.field public static final DISABLE_PRIVACY_MODE:I = 0x4

.field public static final ENABLE_AC_FOR_PRIVACY_MODE:I = 0x2

.field public static final EXTRA_CONFIRM_PURPOSE:Ljava/lang/String; = "confirm_purpose"

.field public static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final FOOTER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer"

.field public static final FOOTER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer_wrong"

.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header"

.field public static final HEADER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header_wrong"

.field public static final LOCK_SETTINGS_TYPE_AC:I = 0x0

.field public static final LOCK_SETTINGS_TYPE_SMS:I = 0x1

.field private static final NO_REQUEST_FOR_ACTIVITY_RESULT:I = -0x400


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lmiui/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "type"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lmiui/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 66
    iput-object p1, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lmiui/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lmiui/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .parameter "activity"
    .parameter "fragment"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 61
    iput-object p2, p0, Lmiui/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lmiui/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    .line 57
    return-void
.end method

.method private confirmPassword(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 163
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v1}, Lmiui/security/MiuiLockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 175
    :goto_0
    return v1

    .line 165
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const/16 v1, -0x400

    if-ne p1, v1, :cond_1

    .line 168
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 175
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 173
    :cond_2
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "request"
    .parameter "message"
    .parameter "details"

    .prologue
    .line 138
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v1}, Lmiui/security/MiuiLockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v1}, Lmiui/security/MiuiLockPatternUtils;->savedPatternExists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    :cond_0
    const/4 v1, 0x0

    .line 154
    :goto_0
    return v1

    .line 141
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 144
    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 145
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const/16 v1, -0x400

    if-ne p1, v1, :cond_2

    .line 147
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 152
    :cond_3
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method


# virtual methods
.method public isACLockEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    iget-object v2, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_lock_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Lmiui/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPasswordForPrivacyModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    iget-object v2, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "password_for_privacymode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPrivacyModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    iget-object v2, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "privacy_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPrivateSmsEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    iget-object v2, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "private_sms_lock_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Lmiui/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "request"
    .parameter "message"
    .parameter "details"

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    if-eqz v1, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, launched:Z
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v1}, Lmiui/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 90
    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Lmiui/security/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 91
    goto :goto_0

    .line 97
    :sswitch_1
    invoke-direct {p0, p1}, Lmiui/security/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public launchConfirmationActivity(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "message"
    .parameter "details"

    .prologue
    const/16 v2, -0x400

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, launched:Z
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 127
    :goto_0
    return v1

    .line 115
    :cond_0
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v1}, Lmiui/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v1, v0

    .line 127
    goto :goto_0

    .line 117
    :sswitch_0
    invoke-direct {p0, v2, p1, p2}, Lmiui/security/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 118
    goto :goto_1

    .line 124
    :sswitch_1
    invoke-direct {p0, v2}, Lmiui/security/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_1

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setACLockEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 219
    iget-object v0, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_lock_enabled"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    if-nez p1, :cond_0

    .line 224
    iget-object v0, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    .line 226
    :cond_0
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPasswordForPrivacyModeEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 249
    iget-object v0, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "password_for_privacymode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrivacyModeEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 194
    iget-object v2, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 196
    .local v0, am:Landroid/app/ActivityManager;
    const-string v2, "com.miui.gallery"

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "privacy_mode_enabled"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PRIVACY_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, i:Landroid/content/Intent;
    const-string v2, "privacy_mode_enabled"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    iget-object v2, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    return-void

    .line 198
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setPrivateSmsEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 229
    iget-object v0, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_sms_lock_enabled"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    if-nez p1, :cond_0

    .line 232
    iget-object v0, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    .line 234
    :cond_0
    return-void

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public utils()Lmiui/security/MiuiLockPatternUtils;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    return-object v0
.end method
