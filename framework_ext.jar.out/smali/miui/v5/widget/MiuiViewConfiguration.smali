.class public Lmiui/v5/widget/MiuiViewConfiguration;
.super Ljava/lang/Object;
.source "MiuiViewConfiguration.java"


# static fields
.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmiui/v5/widget/MiuiViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFloatingViewOverDistance:I

.field private final mFloatingViewTopHiddenSize:I

.field private final mMaxAnchorDuration:I

.field private final mMaxVisibleTabCount:I

.field private final mMinAnchorVelocity:I

.field private final mTranslateSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lmiui/v5/widget/MiuiViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x60a002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mMinAnchorVelocity:I

    .line 37
    const v1, 0x60a004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mTranslateSlop:I

    .line 38
    const v1, 0x60a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mFloatingViewOverDistance:I

    .line 39
    const v1, 0x60a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mFloatingViewTopHiddenSize:I

    .line 40
    const v1, 0x608000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mMaxAnchorDuration:I

    .line 41
    const v1, 0x608000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mMaxVisibleTabCount:I

    .line 42
    return-void
.end method

.method public static get(Landroid/content/Context;)Lmiui/v5/widget/MiuiViewConfiguration;
    .locals 5
    .parameter "context"

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 15
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c8

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 17
    .local v1, density:I
    sget-object v3, Lmiui/v5/widget/MiuiViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/MiuiViewConfiguration;

    .line 18
    .local v0, configuration:Lmiui/v5/widget/MiuiViewConfiguration;
    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lmiui/v5/widget/MiuiViewConfiguration;

    .end local v0           #configuration:Lmiui/v5/widget/MiuiViewConfiguration;
    invoke-direct {v0, p0}, Lmiui/v5/widget/MiuiViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 20
    .restart local v0       #configuration:Lmiui/v5/widget/MiuiViewConfiguration;
    sget-object v3, Lmiui/v5/widget/MiuiViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getMaxAnchorDuration()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mMaxAnchorDuration:I

    return v0
.end method

.method public getMaxVisibleTabCount()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mMaxVisibleTabCount:I

    return v0
.end method

.method public getScaledFloatingViewHiddenSize()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mFloatingViewTopHiddenSize:I

    return v0
.end method

.method public getScaledFloatingViewOverDistance()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mFloatingViewOverDistance:I

    return v0
.end method

.method public getScaledMinAnchorVelocity()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mMinAnchorVelocity:I

    return v0
.end method

.method public getScaledTranslateSlop()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lmiui/v5/widget/MiuiViewConfiguration;->mTranslateSlop:I

    return v0
.end method
