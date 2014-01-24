.class public Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;
.super Ljava/lang/Object;
.source "ContactThumbnailProcessor.java"

# interfaces
.implements Lmiui/provider/yellowpage/model/Image$ImageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor$OnProcessThumbnailListener;
    }
.end annotation


# instance fields
.field private mBackgroundRes:I

.field private mContext:Landroid/content/Context;

.field private mForegroundRes:I

.field private mMaskRes:I

.field private mOnProcessThumbnailListener:Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor$OnProcessThumbnailListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0
    .parameter "context"
    .parameter "forgroundRes"
    .parameter "backgroundRes"
    .parameter "maskRes"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    .line 19
    iput p2, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mForegroundRes:I

    .line 20
    iput p3, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mBackgroundRes:I

    .line 21
    iput p4, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mMaskRes:I

    .line 22
    return-void
.end method


# virtual methods
.method public processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "originImage"

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mBackgroundRes:I

    iget v3, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mMaskRes:I

    iget v4, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mForegroundRes:I

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lmiui/util/ContactPhotoUtils;->createPhoto(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 28
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mOnProcessThumbnailListener:Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor$OnProcessThumbnailListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mOnProcessThumbnailListener:Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor$OnProcessThumbnailListener;

    invoke-interface {v0, v6}, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor$OnProcessThumbnailListener;->onProcessThumbnail(Landroid/graphics/Bitmap;)V

    .line 31
    :cond_0
    return-object v6
.end method

.method public setOnProcessThumbnailListener(Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor$OnProcessThumbnailListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 35
    iput-object p1, p0, Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor;->mOnProcessThumbnailListener:Lmiui/provider/yellowpage/utils/ContactThumbnailProcessor$OnProcessThumbnailListener;

    .line 36
    return-void
.end method
