.class Lmiui/content/res/ThemeResources$FallbackInfo;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallbackInfo"
.end annotation


# instance fields
.field mConfigs:[Ljava/lang/String;

.field mFallback:Ljava/lang/String;

.field mOriginal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "original"
    .parameter "fallback"
    .parameter "configs"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lmiui/content/res/ThemeResources$FallbackInfo;->mOriginal:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lmiui/content/res/ThemeResources$FallbackInfo;->mFallback:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lmiui/content/res/ThemeResources$FallbackInfo;->mConfigs:[Ljava/lang/String;

    .line 92
    return-void
.end method
