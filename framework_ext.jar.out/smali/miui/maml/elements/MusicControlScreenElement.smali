.class public Lmiui/maml/elements/MusicControlScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;
    }
.end annotation


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final CHECK_STREAM_MUSIC_DELAY:I = 0x3e8

.field private static final CRLF:Ljava/lang/String; = "\n"

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field public static final LYRIC_AFTER:Ljava/lang/String; = "lyric_after"

.field public static final LYRIC_BEFORE:Ljava/lang/String; = "lyric_before"

.field public static final LYRIC_CURRENT:Ljava/lang/String; = "lyric_current"

.field public static final LYRIC_CURRENT_LINE_PROGRESS:Ljava/lang/String; = "lyric_current_line_progress"

.field public static final LYRIC_LAST:Ljava/lang/String; = "lyric_last"

.field public static final LYRIC_NEXT:Ljava/lang/String; = "lyric_next"

.field private static final MAX_ALBUM_COVER_PIXEL_SIZE:I = 0x400000

.field public static final MUSIC_DURATION:Ljava/lang/String; = "music_duration"

.field private static final MUSIC_NONE:I = 0x0

.field private static final MUSIC_PLAY:I = 0x2

.field public static final MUSIC_POSITION:Ljava/lang/String; = "music_position"

.field public static final MUSIC_STATE:Ljava/lang/String; = "music_state"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field private static final MUSIC_STOP:I = 0x1

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"

.field public static final VAR_MUSIC_ARTIST:Ljava/lang/String; = "artist"

.field public static final VAR_MUSIC_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private isPaused:Z

.field private mAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mArtistVar:Lmiui/maml/util/IndexedStringVariable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShow:Z

.field private mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

.field private mCheckStreamMusicRunnable:Ljava/lang/Runnable;

.field private mCurrentLineNumber:I

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mDurationVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mEnableLyric:Z

.field private mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

.field private mFilter:Landroid/content/IntentFilter;

.field private mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

.field private mIsOnlineSongBlocking:Z

.field private mIsPlaying:Z

.field private mLastUpdateTime:J

.field private mLyricAfterBuilder:Ljava/lang/StringBuilder;

.field private mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;

.field private mLyricArray:[Ljava/lang/String;

.field private mLyricBeforeBuilder:Ljava/lang/StringBuilder;

.field private mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;

.field private mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;

.field private mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;

.field private mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;

.field private mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mMusicStatus:I

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mPosition:J

.field private mPositionVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mRegistered:Z

.field private mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Lmiui/maml/elements/TextScreenElement;

.field private mTimeArray:[I

.field private mTitleVar:Lmiui/maml/util/IndexedStringVariable;

.field private mUpdateMusicProgress:Ljava/lang/Runnable;

.field private mUpdateMusicProgressInterval:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 248
    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement$1;

    invoke-direct {v1, p0}, Lmiui/maml/elements/MusicControlScreenElement$1;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 497
    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement$2;

    invoke-direct {v1, p0}, Lmiui/maml/elements/MusicControlScreenElement$2;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    .line 751
    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement$3;

    invoke-direct {v1, p0}, Lmiui/maml/elements/MusicControlScreenElement$3;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    .line 760
    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement$4;

    invoke-direct {v1, p0}, Lmiui/maml/elements/MusicControlScreenElement$4;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    .line 162
    const-string v1, "music_prev"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    .line 163
    const-string v1, "music_next"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    .line 164
    const-string v1, "music_play"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    .line 165
    const-string v1, "music_pause"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    .line 166
    const-string v1, "music_display"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/TextScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    .line 167
    const-string v1, "music_album_cover"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    .line 168
    invoke-direct {p0, p0}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    .line 170
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 171
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 172
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 173
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 174
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 175
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "defAlbumCover"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, strDefAlbumCoverBmp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 184
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getResourceDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 188
    .end local v0           #strDefAlbumCoverBmp:Ljava/lang/String;
    :cond_0
    const-string v1, "autoShow"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 189
    const-string v1, "enableLyric"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    .line 190
    const-string v1, "updateLyricInterval"

    const/16 v2, 0x3e8

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgressInterval:I

    .line 191
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    .line 193
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_1

    .line 194
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "music_state"

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 195
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v1, :cond_1

    .line 196
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "music_duration"

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 197
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "music_position"

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 198
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "lyric_current_line_progress"

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 199
    new-instance v1, Lmiui/maml/util/IndexedStringVariable;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "lyric_current"

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;

    .line 200
    new-instance v1, Lmiui/maml/util/IndexedStringVariable;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "lyric_before"

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;

    .line 201
    new-instance v1, Lmiui/maml/util/IndexedStringVariable;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "lyric_after"

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;

    .line 202
    new-instance v1, Lmiui/maml/util/IndexedStringVariable;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "lyric_last"

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;

    .line 203
    new-instance v1, Lmiui/maml/util/IndexedStringVariable;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "lyric_next"

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;

    .line 206
    :cond_1
    return-void

    .line 180
    .restart local v0       #strDefAlbumCoverBmp:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x6020081

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    return v0
.end method

.method static synthetic access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ImageScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1102(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    return-void
.end method

.method static synthetic access$1500(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetMusicProgress()V

    return-void
.end method

.method static synthetic access$1600(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestLyric()V

    return-void
.end method

.method static synthetic access$1800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$1802(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/util/IndexedStringVariable;)Lmiui/maml/util/IndexedStringVariable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;

    return-object p1
.end method

.method static synthetic access$1900(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$1902(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/util/IndexedStringVariable;)Lmiui/maml/util/IndexedStringVariable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lmiui/maml/elements/MusicControlScreenElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    return v0
.end method

.method static synthetic access$2012(Lmiui/maml/elements/MusicControlScreenElement;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iget v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    return v0
.end method

.method static synthetic access$2100(Lmiui/maml/elements/MusicControlScreenElement;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    return-object v0
.end method

.method static synthetic access$2200(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$2400(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$2500(Lmiui/maml/elements/MusicControlScreenElement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$2514(Lmiui/maml/elements/MusicControlScreenElement;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iget-wide v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$2600(Lmiui/maml/elements/MusicControlScreenElement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$2602(Lmiui/maml/elements/MusicControlScreenElement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$2800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$2900(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$3100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$3200(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$3300(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$3400(Lmiui/maml/elements/MusicControlScreenElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgressInterval:I

    return v0
.end method

.method static synthetic access$3600(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->updateMusic()V

    return-void
.end method

.method static synthetic access$3900(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$4000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$4100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$4202(Lmiui/maml/elements/MusicControlScreenElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStatus:I

    return p1
.end method

.method static synthetic access$4300(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$4400(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V

    return-void
.end method

.method static synthetic access$600(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    return v0
.end method

.method static synthetic access$702(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    return p1
.end method

.method static synthetic access$800(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$902(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsPlaying:Z

    return p1
.end method

.method private dispatchMediaKey(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 847
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 848
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 850
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 852
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v1

    .line 854
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "MusicControlScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 857
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "MusicControlScreenElement"

    const-string v3, "Unable to find IAudioService for media key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    .locals 4
    .parameter "g"

    .prologue
    .line 209
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    .line 210
    .local v2, se:Lmiui/maml/elements/ScreenElement;
    instance-of v3, v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v3, :cond_1

    .line 211
    check-cast v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    .line 218
    .end local v2           #se:Lmiui/maml/elements/ScreenElement;
    :goto_0
    return-object v2

    .line 212
    .restart local v2       #se:Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v3, v2, Lmiui/maml/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 213
    check-cast v2, Lmiui/maml/elements/ElementGroup;

    .end local v2           #se:Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v2}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    .line 214
    .local v1, ret:Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 215
    goto :goto_0

    .line 218
    .end local v1           #ret:Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKeyEvent(ILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 2
    .parameter "action"
    .parameter "name"

    .prologue
    .line 836
    const-string v0, "music_prev"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x58

    invoke-direct {v0, p1, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 843
    :goto_0
    return-object v0

    .line 838
    :cond_0
    const-string v0, "music_next"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x57

    invoke-direct {v0, p1, v1}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0

    .line 840
    :cond_1
    const-string v0, "music_play"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "music_pause"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    :cond_2
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x55

    invoke-direct {v0, p1, v1}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0

    .line 843
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, requestIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    .line 358
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;Z)V
    .locals 6
    .parameter "intent"
    .parameter "forceRequest"

    .prologue
    .line 361
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-nez v4, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const-string v4, "album"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, albumName:Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, artistName:Ljava/lang/String;
    if-nez p2, :cond_2

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v4}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v4}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 372
    :cond_2
    const-string v4, "album_uri"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 373
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "album_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, albumPath:Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 375
    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    .line 376
    :cond_3
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V

    goto :goto_0

    .line 378
    :cond_4
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private requestLyric()V
    .locals 2

    .prologue
    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.requestlyric"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, requestLyric:Landroid/content/Intent;
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 676
    return-void
.end method

.method private resetLyric()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    .line 471
    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    .line 472
    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    .line 473
    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    .line 474
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method private resetMusicProgress()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 462
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 463
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    .line 464
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-wide v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 465
    const/high16 v0, -0x8000

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 466
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 467
    return-void
.end method

.method private safeRegisterReceiver()V
    .locals 7

    .prologue
    .line 700
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    if-eqz v2, :cond_0

    .line 716
    :goto_0
    return-void

    .line 703
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    .line 705
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 706
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v1, requestIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 708
    .end local v1           #requestIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 711
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 713
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private safeUnregisterReceiver()V
    .locals 3

    .prologue
    .line 719
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    if-nez v1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 722
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    .line 724
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private setAlbumCover(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 557
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsPlaying:Z

    if-nez v3, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    const-string v3, "album"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, albumName:Ljava/lang/String;
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, artistName:Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v3}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 563
    :cond_2
    iput-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    .line 564
    iput-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    .line 565
    const-string v3, "tmp_album_path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, albumPath:Ljava/lang/String;
    new-instance v3, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;-><init>(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicControlScreenElement$1;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setupButton(Lmiui/maml/elements/ButtonScreenElement;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 224
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    .line 226
    :cond_0
    return-void
.end method

.method private updateLyric(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 482
    const-string v2, "lyric_status"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 483
    .local v1, lyricStatus:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 488
    const-string v2, "lyric"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 489
    .local v0, lyricArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 492
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    .line 493
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 494
    const-string v2, "lyric_time"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    goto :goto_0
.end method

.method private updateMusic()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 769
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 771
    .local v0, isMusicActive:Z
    if-nez v0, :cond_4

    move v1, v2

    .line 772
    .local v1, showPlay:Z
    :goto_0
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    if-eqz v4, :cond_0

    .line 773
    const/4 v1, 0x0

    .line 776
    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v4, v1}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 777
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    if-nez v1, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v4, v3}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 779
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    :cond_2
    iput v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 780
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v2, :cond_3

    .line 781
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v0, :cond_5

    const-wide/high16 v2, 0x3ff0

    :goto_1
    invoke-virtual {v4, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 783
    :cond_3
    if-eqz v0, :cond_6

    const/high16 v2, 0x41f0

    :goto_2
    invoke-virtual {p0, v2}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 784
    return-void

    .end local v1           #showPlay:Z
    :cond_4
    move v1, v3

    .line 771
    goto :goto_0

    .line 781
    .restart local v1       #showPlay:Z
    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 783
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private updateMusicProgress(Landroid/content/Intent;)V
    .locals 16
    .parameter "intent"

    .prologue
    .line 388
    const-string v11, "lyric_status"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 389
    .local v6, lyricStatus:I
    const/4 v11, 0x3

    if-eq v6, v11, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetMusicProgress()V

    .line 394
    const-string v11, "duration"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 395
    .local v3, duration:J
    const-string v11, "position"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 396
    .local v7, positionAtServer:J
    const-string v11, "time_stamp"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 397
    .local v9, timeStamp:J
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-ltz v11, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-ltz v11, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-ltz v11, :cond_0

    .line 401
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;

    long-to-double v12, v3

    invoke-virtual {v11, v12, v13}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long/2addr v11, v7

    sub-long/2addr v11, v9

    move-object/from16 v0, p0

    iput-wide v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    .line 403
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/util/IndexedNumberVariable;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    long-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    .line 406
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v11, v11

    if-lez v11, :cond_0

    .line 410
    const/high16 v11, -0x8000

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 411
    const-wide/16 v1, 0x0

    .line 412
    .local v1, curLineProgress:D
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    .line 413
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    .line 415
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v11, v11

    if-ge v5, v11, :cond_6

    .line 416
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    aget v11, v11, v5

    int-to-long v11, v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    cmp-long v11, v11, v13

    if-lez v11, :cond_4

    .line 417
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    const/high16 v12, -0x8000

    if-ne v11, v12, :cond_2

    .line 418
    add-int/lit8 v11, v5, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 419
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    if-lez v11, :cond_2

    .line 420
    move-object/from16 v0, p0

    iget-wide v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    aget v13, v13, v14

    int-to-long v13, v13

    sub-long/2addr v11, v13

    long-to-double v11, v11

    const-wide/high16 v13, 0x3ff0

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    aget v13, v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    aget v14, v14, v15

    sub-int/2addr v13, v14

    int-to-double v13, v13

    div-double v1, v11, v13

    .line 424
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 425
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    aget v11, v11, v5

    int-to-long v11, v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_5

    .line 426
    move-object/from16 v0, p0

    iput v5, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 427
    add-int/lit8 v11, v5, -0x1

    if-ltz v11, :cond_3

    .line 428
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    add-int/lit8 v14, v5, -0x1

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 431
    :cond_5
    add-int/lit8 v11, v5, -0x1

    if-ltz v11, :cond_3

    .line 432
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    add-int/lit8 v14, v5, -0x1

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 436
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    const/high16 v12, -0x8000

    if-ne v11, v12, :cond_7

    .line 437
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 441
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 442
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 444
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_9

    .line 445
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 448
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v11, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 449
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    if-ltz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    aget-object v11, v11, v13

    :goto_3
    invoke-virtual {v12, v11}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v13, v13, -0x1

    aget-object v11, v11, v13

    :goto_4
    invoke-virtual {v12, v11}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v11, v11, 0x1

    if-ltz v11, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v13, v13

    if-ge v11, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v13, v13, 0x1

    aget-object v11, v11, v13

    :goto_5
    invoke-virtual {v12, v11}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v11

    invoke-virtual {v11}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v11

    invoke-virtual {v11}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgressInterval:I

    int-to-long v13, v13

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 449
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 452
    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    .line 453
    :cond_c
    const/4 v11, 0x0

    goto :goto_5
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 690
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 691
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 692
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 694
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 697
    :cond_0
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 597
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 599
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 601
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    .line 602
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v5, "com.miui.player.metachanged"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v5, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v5, "com.miui.player.refreshprogress"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v5, "com.miui.player.playstatechanged"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v5, "com.miui.player.responselyric"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 609
    iput-boolean v6, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    .line 610
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resume()V

    .line 612
    const/4 v2, 0x0

    .line 614
    .local v2, isMusicActive:Z
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiui/util/AudioOutputHelper;->getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 615
    .local v0, activeReceivers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 616
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 617
    .local v3, r:Ljava/lang/String;
    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 618
    const/4 v2, 0x1

    .line 623
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #r:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 624
    const/4 v4, 0x2

    iput v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 626
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    if-eqz v4, :cond_2

    .line 627
    invoke-virtual {p0, v6}, Lmiui/maml/elements/MusicControlScreenElement;->show(Z)V

    .line 630
    :cond_2
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v4, :cond_3

    .line 631
    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v2, :cond_4

    const-wide/high16 v4, 0x3ff0

    :goto_0
    invoke-virtual {v6, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 633
    :cond_3
    return-void

    .line 631
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 738
    invoke-direct {p0, v1, p1}, Lmiui/maml/elements/MusicControlScreenElement;->getKeyEvent(ILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 739
    .local v0, keyEvent:Landroid/view/KeyEvent;
    if-nez v0, :cond_0

    .line 743
    :goto_0
    return v1

    .line 741
    :cond_0
    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->dispatchMediaKey(Landroid/view/KeyEvent;)V

    .line 743
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 795
    invoke-direct {p0, v2, p1}, Lmiui/maml/elements/MusicControlScreenElement;->getKeyEvent(ILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 796
    .local v1, keyEvent:Landroid/view/KeyEvent;
    if-nez v1, :cond_0

    .line 797
    const/4 v2, 0x0

    .line 832
    :goto_0
    return v2

    .line 798
    :cond_0
    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->dispatchMediaKey(Landroid/view/KeyEvent;)V

    .line 799
    move-object v0, p1

    .line 800
    .local v0, _name:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$5;

    invoke-direct {v4, p0, v0}, Lmiui/maml/elements/MusicControlScreenElement$5;-><init>(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 636
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onVisibilityChange(Z)V

    .line 637
    if-eqz p1, :cond_0

    .line 638
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resume()V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 645
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    if-eqz v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    .line 650
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 651
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 652
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 653
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 659
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 663
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 665
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeRegisterReceiver()V

    .line 666
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v0, :cond_2

    .line 667
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestLyric()V

    .line 669
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    goto :goto_0
.end method

.method public show(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 231
    if-nez p1, :cond_1

    .line 232
    iput v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 233
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 236
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-virtual {v0, v2}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 239
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 245
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->updateMusic()V

    .line 242
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeRegisterReceiver()V

    goto :goto_0
.end method

.method protected updateSpectrumVisualizer()V
    .locals 3

    .prologue
    .line 787
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 788
    .local v0, isMusicActive:Z
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v1, :cond_0

    .line 789
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 791
    :cond_0
    return-void

    .line 789
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
