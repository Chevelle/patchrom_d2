.class final Lmiui/widget/IconPanelActivity$BitmapBlurTask;
.super Landroid/os/AsyncTask;
.source "IconPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/IconPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapBlurTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOwnerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/widget/IconPanelActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/widget/IconPanelActivity;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 363
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 364
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/widget/IconPanelActivity$BitmapBlurTask;->mOwnerRef:Ljava/lang/ref/WeakReference;

    .line 365
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    .line 369
    iget-object v0, p0, Lmiui/widget/IconPanelActivity$BitmapBlurTask;->mOwnerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/widget/IconPanelActivity;

    .line 370
    .local v7, owner:Lmiui/widget/IconPanelActivity;
    if-nez v7, :cond_0

    .line 373
    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const v4, 0x3e99999a

    const/16 v5, 0x8

    invoke-virtual {v7}, Lmiui/widget/IconPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x6070072

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move v3, v2

    invoke-static/range {v0 .. v6}, Lmiui/widget/IconPanelActivity;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FFFII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 360
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/IconPanelActivity$BitmapBlurTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 381
    iget-object v1, p0, Lmiui/widget/IconPanelActivity$BitmapBlurTask;->mOwnerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/IconPanelActivity;

    .line 382
    .local v0, owner:Lmiui/widget/IconPanelActivity;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0, p1}, Lmiui/widget/IconPanelActivity;->onBlurFinished(Landroid/graphics/Bitmap;)V

    .line 385
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 360
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/IconPanelActivity$BitmapBlurTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
