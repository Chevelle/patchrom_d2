.class public Landroid/content/res/MiuiResources$ThemeValues;
.super Ljava/lang/Object;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/MiuiResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeValues"
.end annotation


# instance fields
.field public mIntegerArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field public mIntegers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mStringArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegers:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mStrings:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mStringArrays:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 92
    iget-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 93
    iget-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    iget-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 95
    return-void
.end method

.method public putAll(Landroid/content/res/MiuiResources$ThemeValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegers:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 85
    iget-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mStrings:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 86
    iget-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 87
    iget-object v0, p0, Landroid/content/res/MiuiResources$ThemeValues;->mStringArrays:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 88
    return-void
.end method
