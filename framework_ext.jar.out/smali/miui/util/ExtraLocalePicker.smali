.class public Lmiui/util/ExtraLocalePicker;
.super Ljava/lang/Object;
.source "ExtraLocalePicker.java"


# static fields
.field private static final CN_LOCALES:[Ljava/lang/String;

.field private static final SG_LOCALES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "en_US"

    aput-object v1, v0, v2

    const-string v1, "zh_TW"

    aput-object v1, v0, v3

    const-string v1, "zh_CN"

    aput-object v1, v0, v4

    sput-object v0, Lmiui/util/ExtraLocalePicker;->CN_LOCALES:[Ljava/lang/String;

    .line 15
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "zh_CN"

    aput-object v1, v0, v2

    const-string v1, "en_US"

    aput-object v1, v0, v3

    const-string v1, "en_GB"

    aput-object v1, v0, v4

    sput-object v0, Lmiui/util/ExtraLocalePicker;->SG_LOCALES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustLocaleOrder([Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
    .locals 6
    .parameter "localeInfos"

    .prologue
    .line 20
    sget-object v4, Lmiui/util/ExtraLocalePicker;->CN_LOCALES:[Ljava/lang/String;

    .line 21
    .local v4, locales:[Ljava/lang/String;
    sget-boolean v5, Lmiui/os/Build;->IS_SG_BUILD:Z

    if-eqz v5, :cond_0

    .line 22
    sget-object v4, Lmiui/util/ExtraLocalePicker;->SG_LOCALES:[Ljava/lang/String;

    .line 24
    :cond_0
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 25
    .local v3, locale:Ljava/lang/String;
    invoke-static {p0, v3}, Lmiui/util/ExtraLocalePicker;->moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v3           #locale:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static filterLocale(Landroid/content/res/Resources;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "resources"
    .parameter "locales"

    .prologue
    .line 47
    const v4, 0x6060011

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, filter:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v3, matched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 51
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 52
    aget-object v4, v0, v1

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    .end local v2           #j:I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method private static moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V
    .locals 5
    .parameter "localeInfos"
    .parameter "firstLocaleCode"

    .prologue
    .line 30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 31
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, localeCode:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 33
    if-nez v0, :cond_1

    .line 44
    .end local v3           #localeCode:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 36
    .restart local v3       #localeCode:Ljava/lang/String;
    :cond_1
    aget-object v2, p0, v0

    .line 37
    .local v2, locale:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    move v1, v0

    .local v1, j:I
    :goto_2
    if-lez v1, :cond_2

    .line 38
    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    aput-object v4, p0, v1

    .line 37
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 40
    :cond_2
    const/4 v4, 0x0

    aput-object v2, p0, v4

    goto :goto_1

    .line 30
    .end local v1           #j:I
    .end local v2           #locale:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
