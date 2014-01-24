.class public Lmiui/content/res/ThemeDensityFallbackUtils;
.super Ljava/lang/Object;
.source "ThemeDensityFallbackUtils.java"


# static fields
.field private static final DENSITIES:[I = null

.field public static final DENSITY_NONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getDensitySuffix(I)Ljava/lang/String;
    .locals 4
    .parameter "density"

    .prologue
    .line 27
    sparse-switch p0, :sswitch_data_0

    .line 43
    sget-object v2, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 44
    .local v1, min:I
    add-int/lit8 v0, v1, -0x1

    .local v0, j:I
    :goto_0
    if-lez v0, :cond_1

    .line 45
    sget-object v2, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v2, v2, v0

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v3, v3, v1

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 46
    move v1, v0

    .line 44
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 29
    .end local v0           #j:I
    .end local v1           #min:I
    :sswitch_0
    const-string v2, "-ldpi"

    .line 49
    :goto_1
    return-object v2

    .line 31
    :sswitch_1
    const-string v2, "-mdpi"

    goto :goto_1

    .line 33
    :sswitch_2
    const-string v2, "-hdpi"

    goto :goto_1

    .line 35
    :sswitch_3
    const-string v2, "-xhdpi"

    goto :goto_1

    .line 37
    :sswitch_4
    const-string v2, "-xxhdpi"

    goto :goto_1

    .line 39
    :sswitch_5
    const-string v2, "-nodpi"

    goto :goto_1

    .line 41
    :sswitch_6
    const-string v2, ""

    goto :goto_1

    .line 49
    .restart local v0       #j:I
    .restart local v1       #min:I
    :cond_1
    sget-object v2, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v2, v2, v1

    invoke-static {v2}, Lmiui/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getFallbackOrder(I)[I
    .locals 12
    .parameter "currentDensity"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 54
    sget-object v8, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 55
    .local v3, left:I
    :goto_0
    if-ltz v3, :cond_0

    sget-object v8, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v8, v8, v3

    if-gt v8, p0, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 56
    :cond_0
    const/4 v6, 0x0

    .line 57
    .local v6, right:I
    :goto_1
    sget-object v8, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v8, v8

    if-ge v6, v8, :cond_1

    sget-object v8, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v8, v8, v6

    if-lt v8, p0, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 59
    :cond_1
    sget-object v8, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v11, v8

    add-int/lit8 v8, v3, 0x1

    if-ne v8, v6, :cond_2

    move v8, v9

    :goto_2
    add-int/2addr v8, v11

    new-array v0, v8, [I

    .line 60
    .local v0, densities:[I
    aput p0, v0, v10

    .line 62
    const/4 v1, 0x1

    .line 63
    .local v1, index:I
    :goto_3
    array-length v8, v0

    if-ge v1, v8, :cond_7

    .line 64
    const/4 v5, 0x0

    .line 65
    .local v5, leftIsBetter:Z
    if-gez v3, :cond_3

    .line 66
    const/4 v5, 0x0

    .line 75
    :goto_4
    if-eqz v5, :cond_6

    .line 76
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    sget-object v8, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    add-int/lit8 v4, v3, -0x1

    .end local v3           #left:I
    .local v4, left:I
    aget v8, v8, v3

    aput v8, v0, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    move v3, v4

    .end local v4           #left:I
    .restart local v3       #left:I
    goto :goto_3

    .end local v0           #densities:[I
    .end local v1           #index:I
    .end local v5           #leftIsBetter:Z
    :cond_2
    move v8, v10

    .line 59
    goto :goto_2

    .line 68
    .restart local v0       #densities:[I
    .restart local v1       #index:I
    .restart local v5       #leftIsBetter:Z
    :cond_3
    sget-object v8, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v8, v8

    if-ne v6, v8, :cond_4

    .line 69
    const/4 v5, 0x1

    goto :goto_4

    .line 72
    :cond_4
    sget-object v8, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v8, v8, v3

    sub-int/2addr v8, p0

    sget-object v11, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v11, v11, v6

    sub-int v11, p0, v11

    if-ge v8, v11, :cond_5

    move v5, v9

    :goto_5
    goto :goto_4

    :cond_5
    move v5, v10

    goto :goto_5

    .line 79
    :cond_6
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    sget-object v8, Lmiui/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #right:I
    .local v7, right:I
    aget v8, v8, v6

    aput v8, v0, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    move v6, v7

    .end local v7           #right:I
    .restart local v6       #right:I
    goto :goto_3

    .line 83
    .end local v5           #leftIsBetter:Z
    :cond_7
    return-object v0
.end method
