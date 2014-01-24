.class public Lmiui/push/XMPPError;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/XMPPError$Condition;
    }
.end annotation


# instance fields
.field private applicationExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private code:I

.field private condition:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "code"

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 211
    iput p1, p0, Lmiui/push/XMPPError;->code:I

    .line 212
    iput-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "message"

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 224
    iput p1, p0, Lmiui/push/XMPPError;->code:I

    .line 225
    iput-object p2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "code"
    .parameter "type"
    .parameter "reason"
    .parameter "condition"
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p6, extension:Ljava/util/List;,"Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 242
    iput p1, p0, Lmiui/push/XMPPError;->code:I

    .line 243
    iput-object p2, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    .line 245
    iput-object p4, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    .line 246
    iput-object p5, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 247
    iput-object p6, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v7, 0x0

    iput-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 251
    const-string v7, "ext_err_code"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lmiui/push/XMPPError;->code:I

    .line 252
    const-string v7, "ext_err_type"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 253
    const-string v7, "ext_err_type"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    .line 255
    :cond_0
    const-string v7, "ext_err_cond"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    .line 256
    const-string v7, "ext_err_reason"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    .line 257
    const-string v7, "ext_err_msg"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 258
    const-string v7, "ext_exts"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 259
    .local v3, extBundles:[Landroid/os/Parcelable;
    if-eqz v3, :cond_2

    .line 260
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 261
    move-object v0, v3

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .local v6, p:Landroid/os/Parcelable;
    move-object v1, v6

    .line 262
    check-cast v1, Landroid/os/Bundle;

    .line 263
    .local v1, b:Landroid/os/Bundle;
    invoke-static {v1}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v2

    .line 264
    .local v2, ext:Lmiui/push/CommonPacketExtension;
    if-eqz v2, :cond_1

    .line 265
    iget-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    .end local v0           #arr$:[Landroid/os/Parcelable;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #ext:Lmiui/push/CommonPacketExtension;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #p:Landroid/os/Parcelable;
    :cond_2
    return-void
.end method

.method public constructor <init>(Lmiui/push/XMPPError$Condition;)V
    .locals 1
    .parameter "condition"

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 183
    invoke-direct {p0, p1}, Lmiui/push/XMPPError;->init(Lmiui/push/XMPPError$Condition;)V

    .line 184
    iput-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public constructor <init>(Lmiui/push/XMPPError$Condition;Ljava/lang/String;)V
    .locals 1
    .parameter "condition"
    .parameter "messageText"

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 199
    invoke-direct {p0, p1}, Lmiui/push/XMPPError;->init(Lmiui/push/XMPPError$Condition;)V

    .line 200
    iput-object p2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 201
    return-void
.end method

.method private init(Lmiui/push/XMPPError$Condition;)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 279
    #getter for: Lmiui/push/XMPPError$Condition;->value:Ljava/lang/String;
    invoke-static {p1}, Lmiui/push/XMPPError$Condition;->access$000(Lmiui/push/XMPPError$Condition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    .line 280
    return-void
.end method


# virtual methods
.method public declared-synchronized addExtension(Lmiui/push/CommonPacketExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 441
    :cond_0
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lmiui/push/XMPPError;->code:I

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/PacketExtension;
    .locals 4
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    const/4 v2, 0x0

    .line 421
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v2

    .line 429
    :goto_0
    monitor-exit p0

    return-object v0

    .line 424
    :cond_1
    :try_start_1
    iget-object v3, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/push/CommonPacketExtension;

    .line 425
    .local v0, ext:Lmiui/push/PacketExtension;
    invoke-interface {v0}, Lmiui/push/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lmiui/push/PacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0           #ext:Lmiui/push/PacketExtension;
    :cond_3
    move-object v0, v2

    .line 429
    goto :goto_0

    .line 421
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 409
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized setExtension(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, extension:Ljava/util/List;,"Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit p0

    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 9

    .prologue
    .line 323
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 324
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v7, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 325
    const-string v7, "ext_err_type"

    iget-object v8, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    const-string v7, "ext_err_code"

    iget v8, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    iget-object v7, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 329
    const-string v7, "ext_err_reason"

    iget-object v8, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_1
    iget-object v7, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 332
    const-string v7, "ext_err_cond"

    iget-object v8, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_2
    iget-object v7, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 335
    const-string v7, "ext_err_msg"

    iget-object v8, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_3
    iget-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 338
    iget-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v2, v7, [Landroid/os/Bundle;

    .line 339
    .local v2, extBundle:[Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 340
    .local v3, i:I
    iget-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    .line 341
    .local v1, ext:Lmiui/push/CommonPacketExtension;
    invoke-virtual {v1}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 342
    .local v6, subBundle:Landroid/os/Bundle;
    if-eqz v6, :cond_4

    .line 343
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    aput-object v6, v2, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 346
    .end local v1           #ext:Lmiui/push/CommonPacketExtension;
    .end local v6           #subBundle:Landroid/os/Bundle;
    :cond_5
    const-string v7, "ext_exts"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 348
    .end local v2           #extBundle:[Landroid/os/Bundle;
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v0, txt:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget-object v1, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 393
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<error code=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v3, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 360
    const-string v3, " type=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v3, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_0
    iget-object v3, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 365
    const-string v3, " reason=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v3, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_1
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v3, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 371
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v3, " xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_2
    iget-object v3, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 375
    const-string v3, "<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v3, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v3, "</text>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_3
    invoke-virtual {p0}, Lmiui/push/XMPPError;->getExtensions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    .line 380
    .local v1, element:Lmiui/push/PacketExtension;
    invoke-interface {v1}, Lmiui/push/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 382
    .end local v1           #element:Lmiui/push/PacketExtension;
    :cond_4
    const-string v3, "</error>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
