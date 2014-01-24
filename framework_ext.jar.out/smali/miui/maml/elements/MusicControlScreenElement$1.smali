.class Lmiui/maml/elements/MusicControlScreenElement$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setTrackInfo(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 316
    const-string v2, "track"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, title:Ljava/lang/String;
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, artist:Ljava/lang/String;
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v2, v2, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 321
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    new-instance v3, Lmiui/maml/util/IndexedStringVariable;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-object v4, v4, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v5, "title"

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v6}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1802(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/util/IndexedStringVariable;)Lmiui/maml/util/IndexedStringVariable;

    .line 323
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1900(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 325
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    new-instance v3, Lmiui/maml/util/IndexedStringVariable;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-object v4, v4, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v5, "artist"

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v6}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1902(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/util/IndexedStringVariable;)Lmiui/maml/util/IndexedStringVariable;

    .line 327
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1900(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 330
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v2, v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$702(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 331
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    if-nez v2, :cond_3

    .line 345
    :goto_0
    return-void

    .line 333
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 334
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v7}, Lmiui/maml/elements/TextScreenElement;->show(Z)V

    goto :goto_0

    .line 336
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 337
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 343
    :goto_1
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v8}, Lmiui/maml/elements/TextScreenElement;->show(Z)V

    goto :goto_0

    .line 338
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 339
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 341
    :cond_6
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    const-string v3, "%s   %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 260
    const-string v2, "other"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, extra:Ljava/lang/String;
    const-string v2, "meta_changed_track"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    invoke-direct {p0, p2}, Lmiui/maml/elements/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 263
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$000(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 264
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$100(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v2, v2, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$200(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 296
    .end local v1           #extra:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string v3, "playing"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsPlaying:Z
    invoke-static {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$902(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 297
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsPlaying:Z
    invoke-static {v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$900(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/TextScreenElement;->show(Z)V

    .line 300
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 301
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v3

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsPlaying:Z
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$900(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$100(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v2, v2, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_3

    .line 304
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsPlaying:Z
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$900(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 305
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;
    invoke-static {v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1400(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 307
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->resetMusicProgress()V
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1500(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 312
    :cond_3
    :goto_2
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    .line 313
    return-void

    .line 268
    .restart local v1       #extra:Ljava/lang/String;
    :cond_4
    const-string v2, "meta_changed_buffer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 269
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$100(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v2, v2, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$300(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 273
    :cond_5
    const-string v2, "meta_changed_album"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 274
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const/4 v3, 0x1

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V
    invoke-static {v2, p2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$400(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 276
    :cond_6
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)V

    goto/16 :goto_0

    .line 278
    .end local v1           #extra:Ljava/lang/String;
    :cond_7
    const-string v2, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 279
    invoke-direct {p0, p2}, Lmiui/maml/elements/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 280
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$600(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 281
    :cond_8
    const-string v2, "com.miui.player.refreshprogress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 282
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string v3, "blocking"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$702(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 283
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$700(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$100(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v2, v2, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$300(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 286
    :cond_9
    const-string v2, "com.miui.player.playstatechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 287
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/elements/TextScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_a

    .line 288
    invoke-direct {p0, p2}, Lmiui/maml/elements/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 290
    :cond_a
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$000(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 291
    :cond_b
    const-string v2, "com.miui.player.responselyric"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$200(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 293
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$300(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 301
    :cond_c
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1200(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1

    .line 308
    :cond_d
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 309
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->requestLyric()V
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1700(Lmiui/maml/elements/MusicControlScreenElement;)V

    goto/16 :goto_2
.end method
