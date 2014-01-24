.class public Lmiui/content/res/ExtraConfiguration;
.super Ljava/lang/Object;
.source "ExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/content/res/ExtraConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTACTS_PKG_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final LAUNCHER_PKG_NAME:Ljava/lang/String; = "com.miui.home"

.field public static final MMS_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final SETTINGS_PKG_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_INTEREST_CHANGE_FLAG:J = 0x10007899L

.field public static final THEME_FLAG_ALARM:J = 0x400L

.field public static final THEME_FLAG_ALARMSTYLE:J = 0x100000L

.field public static final THEME_FLAG_AUDIO_EFFECT:J = 0x8000L

.field public static final THEME_FLAG_BOOT_ANIMATION:J = 0x20L

.field public static final THEME_FLAG_BOOT_AUDIO:J = 0x40L

.field public static final THEME_FLAG_CLOCK:J = 0x10000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_FLAG_CLOCK_1x2:J = 0x800000L

.field public static final THEME_FLAG_CLOCK_2x2:J = 0x1000000L

.field public static final THEME_FLAG_CLOCK_2x4:J = 0x2000000L

.field public static final THEME_FLAG_CONTACT:J = 0x800L

.field public static final THEME_FLAG_FONT:J = 0x10L

.field public static final THEME_FLAG_FRAMEWORK:J = 0x1L

.field public static final THEME_FLAG_FREE_HOME:J = 0x400000L

.field public static final THEME_FLAG_FREE_HOME_DEPRECATED:J = 0x200000L

.field public static final THEME_FLAG_ICON:J = 0x8L

.field public static final THEME_FLAG_LAST:J = 0x8000000L

.field public static final THEME_FLAG_LAUNCHER:J = 0x4000L

.field public static final THEME_FLAG_LOCKSCREEN:J = 0x4L

.field public static final THEME_FLAG_LOCKSTYLE:J = 0x1000L

.field public static final THEME_FLAG_MIWALLPAPER:J = 0x80000L

.field public static final THEME_FLAG_MMS:J = 0x80L

.field public static final THEME_FLAG_NOTIFICATION:J = 0x200L

.field public static final THEME_FLAG_PHOTO_FRAME:J = 0x20000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_FLAG_PHOTO_FRAME_2x2:J = 0x4000000L

.field public static final THEME_FLAG_PHOTO_FRAME_2x4:J = 0x8000000L

.field public static final THEME_FLAG_PHOTO_FRAME_4x4:J = 0x40000L

.field public static final THEME_FLAG_RINGTONE:J = 0x100L

.field public static final THEME_FLAG_STATUSBAR:J = 0x2000L

.field public static final THEME_FLAG_THIRD_APP:J = 0x10000000L

.field public static final THEME_FLAG_WALLPAPER:J = 0x2L

.field public static final THEME_FONT_FLAGS:J = 0x10L

.field private static sNeedRestartActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public themeChanged:I

.field public themeChangedFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lmiui/content/res/ExtraConfiguration;->sNeedRestartActivitySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static addNeedRestartActivity(J)V
    .locals 2
    .parameter "themeChangeFlags"

    .prologue
    .line 158
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartLauncher(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->sNeedRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.miui.home"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartSettings(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->sNeedRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartMms(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->sNeedRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartContacts(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->sNeedRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_3
    return-void
.end method

.method public static getScaleMode()I
    .locals 3

    .prologue
    .line 227
    const/4 v1, 0x1

    .line 229
    .local v1, scale:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 230
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 231
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v2, 0xf

    .line 232
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    .line 236
    const/4 v1, 0x1

    .line 241
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v1

    .line 239
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static needNewResources(I)Z
    .locals 1
    .parameter "configChanges"

    .prologue
    .line 104
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestart3rdApp(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 211
    const-wide/32 v0, 0x10000011

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartActivity(Ljava/lang/String;J)Z
    .locals 1
    .parameter "packageName"
    .parameter "themeChangeFlags"

    .prologue
    .line 177
    if-eqz p0, :cond_3

    .line 178
    const-string v0, "com.miui.home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartLauncher(J)Z

    move-result v0

    .line 191
    :goto_0
    return v0

    .line 181
    :cond_0
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartSettings(J)Z

    move-result v0

    goto :goto_0

    .line 184
    :cond_1
    const-string v0, "com.android.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartMms(J)Z

    move-result v0

    goto :goto_0

    .line 187
    :cond_2
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartContacts(J)Z

    move-result v0

    goto :goto_0

    .line 191
    :cond_3
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestart3rdApp(J)Z

    move-result v0

    goto :goto_0
.end method

.method public static needRestartContacts(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 207
    const-wide/16 v0, 0x811

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartLauncher(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 195
    const-wide/16 v0, 0x4019

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartMms(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 203
    const-wide/16 v0, 0x91

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartSettings(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 199
    const-wide/16 v0, 0x19

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartStatusBar(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 215
    const-wide/16 v0, 0x3019

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeNeedRestartActivity(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 173
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->sNeedRestartActivitySet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static sendThemeConfigurationChangeMsg(J)V
    .locals 4
    .parameter "changeFlag"

    .prologue
    .line 138
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    .line 140
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 141
    .local v0, curConfig:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v2, p0, p1}, Lmiui/content/res/ExtraConfiguration;->updateTheme(J)V

    .line 142
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0           #curConfig:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lmiui/content/res/ExtraConfiguration;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/content/res/ExtraConfiguration;->compareTo(Lmiui/content/res/ExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/content/res/ExtraConfiguration;)I
    .locals 3
    .parameter "that"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, n:I
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    sub-int v0, v1, v2

    .line 121
    if-eqz v0, :cond_0

    .line 124
    :cond_0
    return v0
.end method

.method public diff(Lmiui/content/res/ExtraConfiguration;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, changed:I
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 98
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 100
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 129
    iget v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget-wide v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 115
    return-void
.end method

.method public setTo(Lmiui/content/res/ExtraConfiguration;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 66
    iget v0, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 67
    iget-wide v0, p1, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    iput-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 68
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, " themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, " themeChangedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-wide v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Lmiui/content/res/ExtraConfiguration;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, changed:I
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 88
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 89
    iget v1, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 90
    iget-wide v1, p1, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    iput-wide v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 92
    :cond_0
    return v0
.end method

.method public updateTheme(J)V
    .locals 1
    .parameter "changedFlags"

    .prologue
    .line 133
    iget v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 134
    iput-wide p1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 135
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 108
    iget v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    return-void
.end method
