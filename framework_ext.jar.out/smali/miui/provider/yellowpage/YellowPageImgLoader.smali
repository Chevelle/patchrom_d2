.class public Lmiui/provider/yellowpage/YellowPageImgLoader;
.super Ljava/lang/Object;
.source "YellowPageImgLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPageImgLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelLoading(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 155
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/provider/yellowpage/utils/ImageLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 156
    return-void
.end method

.method public static loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image$ImageProcessor;Lmiui/provider/yellowpage/model/Image$ImageFormat;Ljava/lang/String;III)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "processor"
    .parameter "format"
    .parameter "name"
    .parameter "width"
    .parameter "height"
    .parameter "defaultImageRes"

    .prologue
    .line 136
    new-instance v0, Lmiui/provider/yellowpage/model/Image;

    invoke-static {p0, p4, p5, p6, p3}, Lmiui/provider/yellowpage/request/HostManager;->getImageUrl(Landroid/content/Context;Ljava/lang/String;IILmiui/provider/yellowpage/model/Image$ImageFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lmiui/provider/yellowpage/model/Image;-><init>(Ljava/lang/String;Lmiui/provider/yellowpage/model/Image$ImageFormat;)V

    .line 137
    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    invoke-virtual {v0, p2}, Lmiui/provider/yellowpage/model/Image;->setImageProcessor(Lmiui/provider/yellowpage/model/Image$ImageProcessor;)V

    .line 138
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p7}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;I)V

    .line 139
    return-void
.end method

.method public static loadPhoto(Landroid/content/Context;JZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "yid"
    .parameter "fetchRemote"

    .prologue
    .line 28
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, v1, v2}, Lmiui/provider/yellowpage/model/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 31
    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    if-eqz p3, :cond_1

    invoke-static {p0}, Lmiui/provider/ExtraSettings$System;->isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Network;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p3, 0x1

    .line 34
    :goto_0
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImageBitmap(Lmiui/provider/yellowpage/model/Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 31
    :cond_1
    const/4 p3, 0x0

    goto :goto_0
.end method

.method public static loadPhotoByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "fetchRemote"

    .prologue
    .line 45
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar;

    sget-object v1, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lmiui/provider/yellowpage/model/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 47
    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    if-eqz p2, :cond_1

    invoke-static {p0}, Lmiui/provider/ExtraSettings$System;->isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Network;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p2, 0x1

    .line 50
    :goto_0
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImageBitmap(Lmiui/provider/yellowpage/model/Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 47
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static loadThumbnail(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "number"
    .parameter "fetchRemote"

    .prologue
    .line 61
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar;

    sget-object v1, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lmiui/provider/yellowpage/model/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 62
    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImageBitmap(Lmiui/provider/yellowpage/model/Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image$ImageProcessor;JI)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "processor"
    .parameter "yid"
    .parameter "defaultThumbnailRes"

    .prologue
    .line 88
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, v1, v2}, Lmiui/provider/yellowpage/model/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 90
    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    invoke-virtual {v0, p2}, Lmiui/provider/yellowpage/model/Image;->setImageProcessor(Lmiui/provider/yellowpage/model/Image$ImageProcessor;)V

    .line 91
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p5}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;I)V

    .line 92
    return-void
.end method

.method public static loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image$ImageProcessor;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "processor"
    .parameter "number"
    .parameter "defaultThumbnailRes"

    .prologue
    .line 104
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar;

    sget-object v1, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p3, v1}, Lmiui/provider/yellowpage/model/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 105
    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    invoke-virtual {v0, p2}, Lmiui/provider/yellowpage/model/Image;->setImageProcessor(Lmiui/provider/yellowpage/model/Image$ImageProcessor;)V

    .line 106
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p4}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;I)V

    .line 107
    return-void
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image$ImageProcessor;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "processor"
    .parameter "name"
    .parameter "defaultThumbnailRes"

    .prologue
    .line 118
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar;

    sget-object v1, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p3, v1}, Lmiui/provider/yellowpage/model/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 119
    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    invoke-virtual {v0, p2}, Lmiui/provider/yellowpage/model/Image;->setImageProcessor(Lmiui/provider/yellowpage/model/Image$ImageProcessor;)V

    .line 120
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p4}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;I)V

    .line 121
    return-void
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Ljava/lang/String;Z)[B
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "fetchRemote"

    .prologue
    .line 73
    new-instance v0, Lmiui/provider/yellowpage/model/YellowPageAvatar;

    sget-object v1, Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lmiui/provider/yellowpage/model/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/provider/yellowpage/model/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 74
    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImageBytes(Lmiui/provider/yellowpage/model/Image;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static pauseLoading(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->pauseLoading()V

    .line 147
    return-void
.end method

.method public static resumeLoading(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->resumeLoading()V

    .line 164
    return-void
.end method
