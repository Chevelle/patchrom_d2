.class public Landroid/content/res/ThemeConfig$HoloConfig;
.super Landroid/content/res/ThemeConfig;
.source "ThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoloConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Landroid/content/res/ThemeConfig;-><init>(Ljava/util/Map;)V

    .line 532
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 528
    check-cast p1, Landroid/content/res/ThemeConfig;

    .end local p1
    invoke-super {p0, p1}, Landroid/content/res/ThemeConfig;->compareTo(Landroid/content/res/ThemeConfig;)I

    move-result v0

    return v0
.end method
