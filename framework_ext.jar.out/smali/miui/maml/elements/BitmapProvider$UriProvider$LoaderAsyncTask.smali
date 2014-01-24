.class Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider$UriProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/BitmapProvider$UriProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/BitmapProvider$UriProvider;Lmiui/maml/elements/BitmapProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;-><init>(Lmiui/maml/elements/BitmapProvider$UriProvider;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 179
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 181
    .local v2, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 182
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v4, v4, Lmiui/maml/elements/BitmapProvider$UriProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 183
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 189
    if-eqz v2, :cond_0

    .line 191
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 197
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 198
    const-string v4, "BitmapProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to decode bitmap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    #getter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$000(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 201
    const/4 v4, 0x0

    :try_start_2
    aget-object v4, p1, v4

    iget-object v6, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    #getter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;
    invoke-static {v6}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$100(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iput-object v0, v4, Lmiui/maml/elements/BitmapProvider$UriProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 203
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v6, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    #getter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;
    invoke-static {v6}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$100(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;
    invoke-static {v4, v6}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$202(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v4, v4, Lmiui/maml/elements/BitmapProvider$UriProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 206
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    const/4 v6, 0x0

    #setter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;
    invoke-static {v4, v6}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$102(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    :cond_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    return-object v0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v4, "BitmapProvider"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    if-eqz v2, :cond_0

    .line 191
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 192
    :catch_1
    move-exception v1

    .line 193
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BitmapProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing inputstream for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 186
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 187
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_5
    const-string v4, "BitmapProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t read file under the URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    if-eqz v2, :cond_0

    .line 191
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 192
    :catch_3
    move-exception v1

    .line 193
    const-string v4, "BitmapProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing inputstream for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 189
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 191
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 189
    :cond_3
    :goto_2
    throw v4

    .line 208
    :catchall_1
    move-exception v4

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v4

    .line 192
    :catch_4
    move-exception v1

    .line 193
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "BitmapProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing inputstream for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 192
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 193
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "BitmapProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing inputstream for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
