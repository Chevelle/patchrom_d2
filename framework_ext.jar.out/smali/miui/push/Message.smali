.class public Lmiui/push/Message;
.super Lmiui/push/Packet;
.source "Message.java"


# static fields
.field public static final MSG_TYPE_CHAT:Ljava/lang/String; = "chat"

.field public static final MSG_TYPE_ERROR:Ljava/lang/String; = "error"

.field public static final MSG_TYPE_GROUPCHAT:Ljava/lang/String; = "groupchat"

.field public static final MSG_TYPE_HEADLINE:Ljava/lang/String; = "hearline"

.field public static final MSG_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final MSG_TYPE_PPL:Ljava/lang/String; = "ppl"


# instance fields
.field private fseq:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mBodyEncoding:Ljava/lang/String;

.field private mEncrypted:Z

.field private mSubject:Ljava/lang/String;

.field private mTransient:Z

.field private mseq:Ljava/lang/String;

.field private seq:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private thread:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 100
    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    .line 100
    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 149
    const-string v0, "ext_msg_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 150
    const-string v0, "ext_msg_lang"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    .line 151
    const-string v0, "ext_msg_thread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 152
    const-string v0, "ext_msg_sub"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    .line 153
    const-string v0, "ext_msg_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 154
    const-string v0, "ext_body_encode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    .line 155
    const-string v0, "ext_msg_appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    .line 156
    const-string v0, "ext_msg_trans"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 157
    const-string v0, "ext_msg_seq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 158
    const-string v0, "ext_msg_mseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 159
    const-string v0, "ext_msg_fseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 160
    const-string v0, "ext_msg_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "to"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 100
    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 133
    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "to"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 100
    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 143
    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    .line 144
    iput-object p2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 445
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 467
    :cond_0
    :goto_0
    return v2

    .line 447
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 450
    check-cast v0, Lmiui/push/Message;

    .line 452
    .local v0, message:Lmiui/push/Message;
    invoke-super {p0, v0}, Lmiui/push/Packet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    :cond_2
    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    :cond_3
    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    :cond_4
    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    :cond_5
    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->type:Ljava/lang/String;

    if-ne v3, v4, :cond_a

    :goto_1
    move v2, v1

    goto :goto_0

    .line 455
    :cond_6
    iget-object v3, v0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 458
    :cond_7
    iget-object v3, v0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 461
    :cond_8
    iget-object v3, v0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_0

    .line 464
    :cond_9
    iget-object v3, v0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_a
    move v1, v2

    .line 467
    goto :goto_1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncrypted()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    return v0
.end method

.method public getFSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 474
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 475
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 476
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 477
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 478
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 473
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 474
    goto :goto_1

    :cond_3
    move v2, v1

    .line 475
    goto :goto_2

    :cond_4
    move v2, v1

    .line 476
    goto :goto_3
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 182
    iput-object p1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 281
    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "body"
    .parameter "encoding"

    .prologue
    .line 285
    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 286
    iput-object p2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0
    .parameter "encrypted"

    .prologue
    .line 228
    iput-boolean p1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 229
    return-void
.end method

.method public setFSeq(Ljava/lang/String;)V
    .locals 0
    .parameter "fseq"

    .prologue
    .line 206
    iput-object p1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setIsTransient(Z)V
    .locals 0
    .parameter "isTransient"

    .prologue
    .line 174
    iput-boolean p1, p0, Lmiui/push/Message;->mTransient:Z

    .line 175
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 325
    iput-object p1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setMSeq(Ljava/lang/String;)V
    .locals 0
    .parameter "mseq"

    .prologue
    .line 198
    iput-object p1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0
    .parameter "seq"

    .prologue
    .line 190
    iput-object p1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 214
    iput-object p1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 255
    iput-object p1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setThread(Ljava/lang/String;)V
    .locals 0
    .parameter "thread"

    .prologue
    .line 305
    iput-object p1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 224
    iput-object p1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 330
    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 331
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const-string v1, "ext_msg_type"

    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    iget-object v1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 335
    const-string v1, "ext_msg_lang"

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_1
    iget-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 338
    const-string v1, "ext_msg_sub"

    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_2
    iget-object v1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 341
    const-string v1, "ext_msg_body"

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_3
    iget-object v1, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 344
    const-string v1, "ext_body_encode"

    iget-object v2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_4
    iget-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 347
    const-string v1, "ext_msg_thread"

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_5
    iget-object v1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 350
    const-string v1, "ext_msg_appid"

    iget-object v2, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_6
    iget-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v1, :cond_7

    .line 353
    const-string v1, "ext_msg_trans"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    :cond_7
    iget-object v1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 356
    const-string v1, "ext_msg_seq"

    iget-object v2, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_8
    iget-object v1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 359
    const-string v1, "ext_msg_mseq"

    iget-object v2, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_9
    iget-object v1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 362
    const-string v1, "ext_msg_fseq"

    iget-object v2, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_a
    iget-object v1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 365
    const-string v1, "ext_msg_status"

    iget-object v2, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_b
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 374
    const-string v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_0
    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 377
    const-string v2, " xml:lang=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_1
    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 380
    const-string v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_2
    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 383
    const-string v2, " to=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_3
    invoke-virtual {p0}, Lmiui/push/Message;->getSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 386
    const-string v2, " seq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_4
    invoke-virtual {p0}, Lmiui/push/Message;->getMSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 389
    const-string v2, " mseq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getMSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_5
    invoke-virtual {p0}, Lmiui/push/Message;->getFSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 392
    const-string v2, " fseq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getFSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_6
    invoke-virtual {p0}, Lmiui/push/Message;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 395
    const-string v2, " status=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_7
    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 398
    const-string v2, " from=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_8
    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 401
    const-string v2, " chid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_9
    iget-boolean v2, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v2, :cond_a

    .line 404
    const-string v2, " transient=\"true\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_a
    iget-object v2, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 407
    const-string v2, " appid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_b
    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 410
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_c
    iget-boolean v2, p0, Lmiui/push/Message;->mEncrypted:Z

    if-eqz v2, :cond_d

    .line 413
    const-string v2, " s=\"1\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_d
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 418
    const-string v2, "<subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v2, "</subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_e
    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 422
    const-string v2, "<body"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget-object v2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 424
    const-string v2, " encode=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_f
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_10
    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 429
    const-string v2, "<thread>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</thread>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_11
    const-string v2, "error"

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 433
    invoke-virtual {p0}, Lmiui/push/Message;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    .line 434
    .local v1, error:Lmiui/push/XMPPError;
    if-eqz v1, :cond_12

    .line 435
    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .end local v1           #error:Lmiui/push/XMPPError;
    :cond_12
    invoke-virtual {p0}, Lmiui/push/Message;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v2, "</message>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
