.class Lcom/android/internal/policy/impl/PhoneWindowManager$4;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v6, 0x0

    .line 918
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 919
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 920
    .local v1, ringerMode:I
    new-instance v3, Landroid/view/VolumePanel;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService;

    invoke-direct {v3, v7, v4}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    .line 922
    .local v3, volumePanel:Landroid/view/VolumePanel;
    if-ne v1, v9, :cond_2

    .line 923
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "vibrate_when_ringing"

    const/4 v8, -0x2

    invoke-static {v4, v7, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v5

    .line 925
    .local v2, vibrateSetting:Z
    :goto_0
    if-eqz v2, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 930
    .end local v2           #vibrateSetting:Z
    :goto_2
    const/16 v4, 0x11

    invoke-virtual {v3, v9, v4}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 932
    return-void

    :cond_0
    move v2, v6

    .line 923
    goto :goto_0

    .restart local v2       #vibrateSetting:Z
    :cond_1
    move v4, v6

    .line 925
    goto :goto_1

    .line 928
    .end local v2           #vibrateSetting:Z
    :cond_2
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method
