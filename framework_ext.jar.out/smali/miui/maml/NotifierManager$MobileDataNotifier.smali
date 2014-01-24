.class public Lmiui/maml/NotifierManager$MobileDataNotifier;
.super Lmiui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileDataNotifier"
.end annotation


# instance fields
.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 247
    new-instance v0, Lmiui/maml/NotifierManager$MobileDataNotifier$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/NotifierManager$MobileDataNotifier$1;-><init>(Lmiui/maml/NotifierManager$MobileDataNotifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$MobileDataNotifier;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    .line 259
    return-void
.end method


# virtual methods
.method protected onRegister()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lmiui/maml/NotifierManager$MobileDataNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/maml/NotifierManager$MobileDataNotifier;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lmiui/maml/NotifierManager$MobileDataNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/NotifierManager$MobileDataNotifier;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 270
    return-void
.end method
