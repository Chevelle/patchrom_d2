.class public abstract Lmiui/maml/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/BitmapProvider$1;,
        Lmiui/maml/elements/BitmapProvider$UriProvider;,
        Lmiui/maml/elements/BitmapProvider$FileSystemProvider;,
        Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;,
        Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;,
        Lmiui/maml/elements/BitmapProvider$AppIconProvider;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 52
    return-void
.end method

.method public static create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
    .locals 4
    .parameter "root"
    .parameter "type"

    .prologue
    .line 28
    const-string v2, "ResourceImage"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    new-instance v1, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 47
    :cond_0
    :goto_0
    return-object v1

    .line 30
    :cond_1
    const-string v2, "VirtualScreen"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    new-instance v1, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 32
    :cond_2
    const-string v2, "ApplicationIcon"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    new-instance v1, Lmiui/maml/elements/BitmapProvider$AppIconProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$AppIconProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 34
    :cond_3
    const-string v2, "FileSystem"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 35
    new-instance v1, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 36
    :cond_4
    const-string v2, "Uri"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    new-instance v1, Lmiui/maml/elements/BitmapProvider$UriProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$UriProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 40
    :cond_5
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    const-string v3, "BitmapProvider"

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;

    move-result-object v0

    check-cast v0, Lmiui/maml/ObjectFactory$BitmapProviderFactory;

    .line 41
    .local v0, f:Lmiui/maml/ObjectFactory$BitmapProviderFactory;
    if-eqz v0, :cond_6

    .line 42
    invoke-virtual {v0, p0, p1}, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v1

    .line 43
    .local v1, provider:Lmiui/maml/elements/BitmapProvider;
    if-nez v1, :cond_0

    .line 47
    .end local v1           #provider:Lmiui/maml/elements/BitmapProvider;
    :cond_6
    new-instance v1, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "src"

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 55
    invoke-virtual {p0}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 56
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
