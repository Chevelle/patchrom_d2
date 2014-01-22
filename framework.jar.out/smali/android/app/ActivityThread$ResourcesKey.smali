.class Landroid/app/ActivityThread$ResourcesKey;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourcesKey"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private final mHash:I

.field private final mIsThemeable:Z

.field private final mOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mResDir:Ljava/lang/String;

.field private final mScale:F


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZ)V
    .locals 4
    .parameter "resDir"
    .parameter "displayId"
    .parameter "overrideConfiguration"
    .parameter "scale"
    .parameter "isThemeable"

    .prologue
    const/4 v2, 0x0

    .line 1529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1530
    iput-object p1, p0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    .line 1531
    iput p2, p0, Landroid/app/ActivityThread$ResourcesKey;->mDisplayId:I

    .line 1532
    if-eqz p3, :cond_0

    .line 1533
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v1, p3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1534
    const/4 p3, 0x0

    .line 1537
    :cond_0
    iput-object p3, p0, Landroid/app/ActivityThread$ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 1538
    iput p4, p0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    .line 1539
    iput-boolean p5, p0, Landroid/app/ActivityThread$ResourcesKey;->mIsThemeable:Z

    .line 1540
    const/16 v0, 0x11

    .line 1541
    .local v0, hash:I
    iget-object v1, p0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1542
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/app/ActivityThread$ResourcesKey;->mDisplayId:I

    add-int v0, v1, v3

    .line 1543
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/app/ActivityThread$ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/ActivityThread$ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 1545
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v1, v3

    .line 1546
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Landroid/app/ActivityThread$ResourcesKey;->mIsThemeable:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int v0, v1, v2

    .line 1547
    iput v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mHash:I

    .line 1548
    return-void

    :cond_2
    move v1, v2

    .line 1543
    goto :goto_0
.end method

.method static synthetic access$3000(Landroid/app/ActivityThread$ResourcesKey;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1521
    iget-object v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/app/ActivityThread$ResourcesKey;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1521
    iget v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mDisplayId:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 1557
    instance-of v2, p1, Landroid/app/ActivityThread$ResourcesKey;

    if-nez v2, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1560
    check-cast v0, Landroid/app/ActivityThread$ResourcesKey;

    .line 1561
    .local v0, peer:Landroid/app/ActivityThread$ResourcesKey;
    iget-object v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1564
    iget v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mDisplayId:I

    iget v3, v0, Landroid/app/ActivityThread$ResourcesKey;->mDisplayId:I

    if-ne v2, v3, :cond_0

    .line 1567
    iget-object v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v0, Landroid/app/ActivityThread$ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eq v2, v3, :cond_2

    .line 1568
    iget-object v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/app/ActivityThread$ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    .line 1571
    iget-object v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v0, Landroid/app/ActivityThread$ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1575
    :cond_2
    iget v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    iget v3, v0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 1578
    iget-boolean v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mIsThemeable:Z

    iget-boolean v3, v0, Landroid/app/ActivityThread$ResourcesKey;->mIsThemeable:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1552
    iget v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mHash:I

    return v0
.end method
