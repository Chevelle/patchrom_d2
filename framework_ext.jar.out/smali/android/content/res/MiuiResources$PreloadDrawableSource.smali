.class Landroid/content/res/MiuiResources$PreloadDrawableSource;
.super Ljava/lang/Object;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/MiuiResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadDrawableSource"
.end annotation


# instance fields
.field mCookie:I

.field mResourcePath:Ljava/lang/String;

.field mThemePath:Ljava/lang/String;

.field final synthetic this$0:Landroid/content/res/MiuiResources;


# direct methods
.method constructor <init>(Landroid/content/res/MiuiResources;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "cookie"
    .parameter "resourcePath"
    .parameter "themePath"

    .prologue
    .line 70
    iput-object p1, p0, Landroid/content/res/MiuiResources$PreloadDrawableSource;->this$0:Landroid/content/res/MiuiResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p2, p0, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mCookie:I

    .line 72
    iput-object p3, p0, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    .line 74
    return-void
.end method
