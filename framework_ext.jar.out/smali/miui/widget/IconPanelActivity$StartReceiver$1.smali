.class Lmiui/widget/IconPanelActivity$StartReceiver$1;
.super Ljava/lang/Object;
.source "IconPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/IconPanelActivity$StartReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmiui/widget/IconPanelActivity$StartReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iput-object p2, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 182
    iget-object v3, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v3, v3, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    iget v3, v3, Lmiui/widget/IconPanelActivity;->mStatus:I

    sget v4, Lmiui/widget/IconPanelActivity;->STATUS_UNINITIALIZED:I

    if-eq v3, v4, :cond_0

    .line 183
    const-string v3, "IconPanelActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad status, mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v5, v5, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    iget v5, v5, Lmiui/widget/IconPanelActivity;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v3, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lmiui/widget/IconPanelActivity;->shotLayer(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 190
    .local v1, rawscreen:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    if-eq v3, v4, :cond_1

    .line 191
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 193
    .local v2, sreenshot:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 194
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 195
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    .end local v0           #c:Landroid/graphics/Canvas;
    :goto_1
    iget-object v3, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v3, v3, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    iget-object v3, v3, Lmiui/widget/IconPanelActivity;->mImageHomeLayer:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    new-instance v3, Lmiui/widget/IconPanelActivity$BitmapBlurTask;

    iget-object v4, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v4, v4, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    invoke-direct {v3, v4}, Lmiui/widget/IconPanelActivity$BitmapBlurTask;-><init>(Lmiui/widget/IconPanelActivity;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lmiui/widget/IconPanelActivity$BitmapBlurTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 203
    iget-object v3, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v3, v3, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    invoke-virtual {v3}, Lmiui/widget/IconPanelActivity;->startOpenAnimation()V

    .line 204
    iget-object v3, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v3, v3, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    const-string v4, "ok"

    invoke-static {v3, v4}, Lmiui/widget/IconPanelActivity;->notifyHome(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v2           #sreenshot:Landroid/graphics/Bitmap;
    :cond_1
    move-object v2, v1

    .restart local v2       #sreenshot:Landroid/graphics/Bitmap;
    goto :goto_1
.end method
