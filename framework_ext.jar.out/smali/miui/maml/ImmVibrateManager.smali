.class public Lmiui/maml/ImmVibrateManager;
.super Ljava/lang/Object;
.source "ImmVibrateManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImmVibrateManager"


# instance fields
.field private mContext:Lmiui/maml/ScreenContext;

.field private mDevice:Lcom/immersion/Device;

.field private mIvtBuffers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/immersion/IVTBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ImmVibrateManager;->mIvtBuffers:Ljava/util/HashMap;

    .line 27
    iput-object p1, p0, Lmiui/maml/ImmVibrateManager;->mContext:Lmiui/maml/ScreenContext;

    .line 28
    return-void
.end method

.method public static isImmersionSupport()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    return v0
.end method

.method private loadIvtBuffer(Ljava/io/InputStream;)Lcom/immersion/IVTBuffer;
    .locals 9
    .parameter "is"

    .prologue
    const/4 v5, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v5

    .line 99
    :cond_1
    const/16 v0, 0x400

    .line 100
    .local v0, COUNT:I
    const/16 v6, 0x400

    :try_start_0
    new-array v1, v6, [B

    .line 101
    .local v1, buff:[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    const/4 v4, -0x1

    .line 103
    .local v4, read:I
    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {p1, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_2

    .line 104
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    .end local v1           #buff:[B
    .end local v3           #os:Ljava/io/ByteArrayOutputStream;
    .end local v4           #read:I
    :catch_0
    move-exception v2

    .line 110
    .local v2, e:Ljava/io/IOException;
    :try_start_1
    const-string v6, "ImmVibrateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to load IVT buffer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    if-eqz p1, :cond_0

    .line 114
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 115
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    goto :goto_0

    .line 106
    .restart local v1       #buff:[B
    .restart local v3       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #read:I
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v6

    if-nez v6, :cond_3

    .line 112
    if-eqz p1, :cond_0

    .line 114
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 108
    :cond_3
    :try_start_5
    new-instance v6, Lcom/immersion/IVTBuffer;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/immersion/IVTBuffer;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 112
    if-eqz p1, :cond_4

    .line 114
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_2
    move-object v5, v6

    .line 108
    goto :goto_0

    .line 112
    .end local v1           #buff:[B
    .end local v3           #os:Ljava/io/ByteArrayOutputStream;
    .end local v4           #read:I
    :catchall_0
    move-exception v5

    if-eqz p1, :cond_5

    .line 114
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 112
    :cond_5
    :goto_3
    throw v5

    .line 115
    :catch_2
    move-exception v6

    goto :goto_3

    .restart local v1       #buff:[B
    .restart local v3       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #read:I
    :catch_3
    move-exception v5

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v0}, Lcom/immersion/Device;->close()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    .line 44
    :cond_0
    iget-object v0, p0, Lmiui/maml/ImmVibrateManager;->mIvtBuffers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 45
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    .line 36
    iget-object v0, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v0, v1, v1}, Lcom/immersion/Device;->setPropertyInt32(II)V

    .line 37
    return-void
.end method

.method public playIvtEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "ivtFile"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ImmVibrateManager;->playIvtEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public playIvtEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "ivtFile"
    .parameter "effectName"

    .prologue
    .line 53
    iget-object v2, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    if-nez v2, :cond_0

    .line 70
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v2, p0, Lmiui/maml/ImmVibrateManager;->mIvtBuffers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/immersion/IVTBuffer;

    .line 57
    .local v0, buf:Lcom/immersion/IVTBuffer;
    if-nez v0, :cond_2

    .line 58
    iget-object v2, p0, Lmiui/maml/ImmVibrateManager;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v2, p1}, Lmiui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/maml/ImmVibrateManager;->loadIvtBuffer(Ljava/io/InputStream;)Lcom/immersion/IVTBuffer;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    const-string v2, "ImmVibrateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to load IVT resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_1
    iget-object v2, p0, Lmiui/maml/ImmVibrateManager;->mIvtBuffers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2
    :try_start_0
    iget-object v3, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v0, v2}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "ImmVibrateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to play IVT effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_3
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/immersion/IVTBuffer;->getEffectIndexFromName(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1
.end method

.method public playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 84
    iget-object v1, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    if-nez v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v1, p1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "ImmVibrateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to play MagSweepEffectDefinition. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 73
    iget-object v1, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    if-nez v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v1, p1}, Lcom/immersion/Device;->playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "ImmVibrateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to play PeriodicEffectDefinition. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
