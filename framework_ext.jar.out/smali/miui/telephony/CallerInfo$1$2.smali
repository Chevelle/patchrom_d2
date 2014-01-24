.class Lmiui/telephony/CallerInfo$1$2;
.super Ljava/lang/Object;
.source "CallerInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/CallerInfo$1;->onPostExecute(Lmiui/provider/yellowpage/model/YellowPagePhone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/CallerInfo$1;


# direct methods
.method constructor <init>(Lmiui/telephony/CallerInfo$1;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lmiui/telephony/CallerInfo$1$2;->this$0:Lmiui/telephony/CallerInfo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 115
    iget-object v1, p0, Lmiui/telephony/CallerInfo$1$2;->this$0:Lmiui/telephony/CallerInfo$1;

    iget-object v1, v1, Lmiui/telephony/CallerInfo$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lmiui/telephony/CallerInfo$1$2;->this$0:Lmiui/telephony/CallerInfo$1;

    iget-object v2, v2, Lmiui/telephony/CallerInfo$1;->val$number:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lmiui/provider/yellowpage/YellowPageImgLoader;->loadThumbnail(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    .local v0, photo:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lmiui/telephony/CallerInfo$1$2;->this$0:Lmiui/telephony/CallerInfo$1;

    iget-object v1, v1, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lmiui/telephony/CallerInfo$1$2;->this$0:Lmiui/telephony/CallerInfo$1;

    iget-object v3, v3, Lmiui/telephony/CallerInfo$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v1, p0, Lmiui/telephony/CallerInfo$1$2;->this$0:Lmiui/telephony/CallerInfo$1;

    iget-object v1, v1, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iput-boolean v4, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 121
    iget-object v1, p0, Lmiui/telephony/CallerInfo$1$2;->this$0:Lmiui/telephony/CallerInfo$1;

    #getter for: Lmiui/telephony/CallerInfo$1;->mYpImgLoadedHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/telephony/CallerInfo$1;->access$000(Lmiui/telephony/CallerInfo$1;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    :cond_0
    return-void
.end method
