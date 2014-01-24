.class public Landroid/content/res/MiuiResources$ThemeFileInfoOption;
.super Ljava/lang/Object;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/MiuiResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeFileInfoOption"
.end annotation


# instance fields
.field public inCookie:I

.field public inDensity:I

.field public inRequestStream:Z

.field public inResourcePath:Ljava/lang/String;

.field public outDensity:I

.field public outFilterPath:Ljava/lang/String;

.field public outInputStream:Ljava/io/InputStream;

.field public outSize:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .parameter "cookie"
    .parameter "resourcePath"
    .parameter "requestStream"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 54
    iput-object p2, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 55
    iput-boolean p3, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/util/TypedValue;Z)V
    .locals 1
    .parameter "value"
    .parameter "requestStream"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 60
    iget v0, p1, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 61
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 62
    iput-boolean p2, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "requestStream"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    .line 50
    return-void
.end method
