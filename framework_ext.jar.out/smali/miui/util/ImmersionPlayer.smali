.class public Lmiui/util/ImmersionPlayer;
.super Ljava/lang/Object;
.source "ImmersionPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImmersionPlayer"

.field private static final sImmersion:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImmersionDevice:Lcom/immersion/Device;

.field private mIvtBuffer:Lcom/immersion/IVTBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    sput-boolean v0, Lmiui/util/ImmersionPlayer;->sImmersion:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/util/ImmersionPlayer;-><init>(Landroid/content/Context;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "priority"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-boolean v0, Lmiui/util/ImmersionPlayer;->sImmersion:Z

    if-eqz v0, :cond_0

    .line 42
    iput-object p1, p0, Lmiui/util/ImmersionPlayer;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ImmersionPlayer;->mImmersionDevice:Lcom/immersion/Device;

    .line 44
    invoke-virtual {p0, p2}, Lmiui/util/ImmersionPlayer;->setImmersionPriority(I)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "ImmersionPlayer"

    const-string v1, "Do not support "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isImmersionSupport()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lmiui/util/ImmersionPlayer;->sImmersion:Z

    return v0
.end method

.method private loadImmersionHaptic(I)Lcom/immersion/IVTBuffer;
    .locals 9
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 123
    sget-boolean v5, Lmiui/util/ImmersionPlayer;->sImmersion:Z

    if-nez v5, :cond_0

    .line 124
    const/4 v3, 0x0

    .line 151
    :goto_0
    return-object v3

    .line 127
    :cond_0
    const/16 v5, 0x400

    new-array v4, v5, [B

    .line 128
    .local v4, tmpBuffer:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 130
    .local v2, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 133
    .local v3, ivtBuffer:Lcom/immersion/IVTBuffer;
    :try_start_0
    iget-object v5, p0, Lmiui/util/ImmersionPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 136
    .local v1, iLen:I
    :goto_1
    if-lez v1, :cond_1

    .line 137
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 138
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 139
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    goto :goto_1

    .line 142
    :cond_1
    new-instance v3, Lcom/immersion/IVTBuffer;

    .end local v3           #ivtBuffer:Lcom/immersion/IVTBuffer;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/immersion/IVTBuffer;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .restart local v3       #ivtBuffer:Lcom/immersion/IVTBuffer;
    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 149
    :cond_2
    const-string v5, "ImmersionPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/immersion/IVTBuffer;->getEffectCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Effect - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v8}, Lcom/immersion/IVTBuffer;->getEffectName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v1           #iLen:I
    .end local v3           #ivtBuffer:Lcom/immersion/IVTBuffer;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 144
    :cond_3
    throw v5
.end method


# virtual methods
.method public findIndexFromName(Ljava/lang/String;)I
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 102
    sget-boolean v0, Lmiui/util/ImmersionPlayer;->sImmersion:Z

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not support immersion"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lmiui/util/ImmersionPlayer;->mIvtBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v0, p1}, Lcom/immersion/IVTBuffer;->getEffectIndexFromName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadIvtBuffer(I)Z
    .locals 4
    .parameter "resourceId"

    .prologue
    const/4 v1, 0x0

    .line 109
    sget-boolean v2, Lmiui/util/ImmersionPlayer;->sImmersion:Z

    if-nez v2, :cond_0

    .line 119
    :goto_0
    return v1

    .line 114
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/util/ImmersionPlayer;->loadImmersionHaptic(I)Lcom/immersion/IVTBuffer;

    move-result-object v2

    iput-object v2, p0, Lmiui/util/ImmersionPlayer;->mIvtBuffer:Lcom/immersion/IVTBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/4 v1, 0x1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ImmersionPlayer"

    const-string v3, "Error when load ivt buffer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playImmersionEffect(IZ)V
    .locals 3
    .parameter "index"
    .parameter "always"

    .prologue
    const/4 v0, 0x0

    .line 73
    sget-boolean v1, Lmiui/util/ImmersionPlayer;->sImmersion:Z

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lmiui/util/ImmersionPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 78
    .local v0, hapticsDisabled:Z
    :cond_2
    if-nez p2, :cond_3

    if-nez v0, :cond_0

    .line 82
    :cond_3
    iget-object v1, p0, Lmiui/util/ImmersionPlayer;->mImmersionDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lmiui/util/ImmersionPlayer;->mIvtBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v1, v2, p1}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lmiui/util/ImmersionPlayer;->sImmersion:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lmiui/util/ImmersionPlayer;->mImmersionDevice:Lcom/immersion/Device;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lmiui/util/ImmersionPlayer;->mImmersionDevice:Lcom/immersion/Device;

    invoke-virtual {v0}, Lcom/immersion/Device;->close()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/ImmersionPlayer;->mImmersionDevice:Lcom/immersion/Device;

    .line 97
    :cond_0
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/immersion/ImmVibe;->terminate()V

    .line 99
    :cond_1
    return-void
.end method

.method public setImmersionPriority(I)V
    .locals 4
    .parameter "priority"

    .prologue
    const/4 v3, 0x7

    .line 57
    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not support priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". The priority value must between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iget-object v0, p0, Lmiui/util/ImmersionPlayer;->mImmersionDevice:Lcom/immersion/Device;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lmiui/util/ImmersionPlayer;->mImmersionDevice:Lcom/immersion/Device;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/immersion/Device;->setPropertyInt32(II)V

    .line 66
    :cond_2
    return-void
.end method

.method public stopImmersionEffect()V
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lmiui/util/ImmersionPlayer;->sImmersion:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lmiui/util/ImmersionPlayer;->mImmersionDevice:Lcom/immersion/Device;

    invoke-virtual {v0}, Lcom/immersion/Device;->stopAllPlayingEffects()V

    .line 89
    :cond_0
    return-void
.end method
