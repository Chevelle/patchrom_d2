.class Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;
.super Landroid/os/AsyncTask;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAlbumAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicControlScreenElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 570
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 574
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 575
    .local v1, albumPath:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v0, p1, v3

    .line 576
    .local v0, albumName:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v2, p1, v3

    .line 577
    .local v2, artistName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 578
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    new-instance v4, Lmiui/util/InputStreamLoader;

    invoke-direct {v4, v1}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40

    invoke-static {v4, v5}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1102(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 579
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 580
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-object v4, v4, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getResourceDensity()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 585
    :cond_0
    :goto_0
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$3600(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;
    invoke-static {v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$3700(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 586
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;
    invoke-static {v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v4

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 588
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v3}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    .line 590
    :cond_1
    return-object v6

    .line 583
    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v3, v6}, Lmiui/maml/elements/MusicControlScreenElement;->access$1102(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 586
    :cond_3
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1200(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
.end method
