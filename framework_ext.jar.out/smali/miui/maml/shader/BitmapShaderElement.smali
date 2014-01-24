.class public Lmiui/maml/shader/BitmapShaderElement;
.super Lmiui/maml/shader/ShaderElement;
.source "BitmapShaderElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapShader"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 4
    .parameter "node"
    .parameter "root"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 28
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lmiui/maml/elements/BitmapProvider;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/BitmapShaderElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    .line 29
    iget-object v0, p0, Lmiui/maml/shader/BitmapShaderElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    const-string v1, "src"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/BitmapShaderElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 30
    invoke-direct {p0, p1}, Lmiui/maml/shader/BitmapShaderElement;->resolveTileMode(Lorg/w3c/dom/Element;)V

    .line 32
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lmiui/maml/shader/BitmapShaderElement;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lmiui/maml/shader/BitmapShaderElement;->mShader:Landroid/graphics/Shader;

    .line 33
    return-void
.end method

.method private resolveTileMode(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "node"

    .prologue
    const/4 v3, 0x1

    .line 36
    const-string v2, "tile"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, strTile:Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, tiles:[Ljava/lang/String;
    array-length v2, v1

    if-gt v2, v3, :cond_0

    .line 39
    iget-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    iput-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lmiui/maml/shader/BitmapShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 44
    aget-object v2, v1, v3

    invoke-static {v2}, Lmiui/maml/shader/BitmapShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    goto :goto_0
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public updateShader()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public updateShaderMatrix()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
