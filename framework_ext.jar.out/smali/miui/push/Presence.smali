.class public Lmiui/push/Presence;
.super Lmiui/push/Packet;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/Presence$Mode;,
        Lmiui/push/Presence$Type;
    }
.end annotation


# instance fields
.field private mode:Lmiui/push/Presence$Mode;

.field private priority:I

.field private status:Ljava/lang/String;

.field private type:Lmiui/push/Presence$Type;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    .line 66
    sget-object v0, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    .line 67
    iput-object v1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    .line 68
    const/high16 v0, -0x8000

    iput v0, p0, Lmiui/push/Presence;->priority:I

    .line 69
    iput-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    .line 98
    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/push/Presence$Type;->valueOf(Ljava/lang/String;)Lmiui/push/Presence$Type;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    .line 101
    :cond_0
    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    .line 104
    :cond_1
    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/push/Presence;->priority:I

    .line 107
    :cond_2
    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/push/Presence$Mode;->valueOf(Ljava/lang/String;)Lmiui/push/Presence$Mode;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    .line 110
    :cond_3
    return-void
.end method

.method public constructor <init>(Lmiui/push/Presence$Type;)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 66
    sget-object v0, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    .line 67
    iput-object v1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    .line 68
    const/high16 v0, -0x8000

    iput v0, p0, Lmiui/push/Presence;->priority:I

    .line 69
    iput-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    .line 78
    invoke-virtual {p0, p1}, Lmiui/push/Presence;->setType(Lmiui/push/Presence$Type;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lmiui/push/Presence$Type;Ljava/lang/String;ILmiui/push/Presence$Mode;)V
    .locals 2
    .parameter "type"
    .parameter "status"
    .parameter "priority"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 66
    sget-object v0, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    .line 67
    iput-object v1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    .line 68
    const/high16 v0, -0x8000

    iput v0, p0, Lmiui/push/Presence;->priority:I

    .line 69
    iput-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    .line 90
    invoke-virtual {p0, p1}, Lmiui/push/Presence;->setType(Lmiui/push/Presence$Type;)V

    .line 91
    invoke-virtual {p0, p2}, Lmiui/push/Presence;->setStatus(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p3}, Lmiui/push/Presence;->setPriority(I)V

    .line 93
    invoke-virtual {p0, p4}, Lmiui/push/Presence;->setMode(Lmiui/push/Presence$Mode;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getMode()Lmiui/push/Presence$Mode;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lmiui/push/Presence;->priority:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lmiui/push/Presence$Type;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    sget-object v1, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAway()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    sget-object v1, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v1, Lmiui/push/Presence$Mode;->away:Lmiui/push/Presence$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v1, Lmiui/push/Presence$Mode;->xa:Lmiui/push/Presence$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v1, Lmiui/push/Presence$Mode;->dnd:Lmiui/push/Presence$Mode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMode(Lmiui/push/Presence$Mode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 242
    iput-object p1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    .line 243
    return-void
.end method

.method public setPriority(I)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 217
    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x80

    if-le p1, v0, :cond_1

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Valid range is -128 through 128."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    iput p1, p0, Lmiui/push/Presence;->priority:I

    .line 222
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 198
    iput-object p1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setType(Lmiui/push/Presence$Type;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iput-object p1, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    .line 178
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 115
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "ext_pres_type"

    iget-object v2, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    invoke-virtual {v2}, Lmiui/push/Presence$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 119
    const-string v1, "ext_pres_status"

    iget-object v2, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_1
    iget v1, p0, Lmiui/push/Presence;->priority:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_2

    .line 122
    const-string v1, "ext_pres_prio"

    iget v2, p0, Lmiui/push/Presence;->priority:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    :cond_2
    iget-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v2, Lmiui/push/Presence$Mode;->available:Lmiui/push/Presence$Mode;

    if-eq v1, v2, :cond_3

    .line 125
    const-string v1, "ext_pres_mode"

    iget-object v2, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    invoke-virtual {v2}, Lmiui/push/Presence$Mode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_3
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<presence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Lmiui/push/Presence;->getXmlns()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 249
    const-string v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Presence;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    invoke-virtual {p0}, Lmiui/push/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 252
    const-string v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_1
    invoke-virtual {p0}, Lmiui/push/Presence;->getTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 255
    const-string v2, " to=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Presence;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_2
    invoke-virtual {p0}, Lmiui/push/Presence;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 258
    const-string v2, " from=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_3
    invoke-virtual {p0}, Lmiui/push/Presence;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 261
    const-string v2, " chid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Presence;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_4
    iget-object v2, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    if-eqz v2, :cond_5

    .line 264
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_5
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v2, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 269
    const-string v2, "<status>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</status>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_6
    iget v2, p0, Lmiui/push/Presence;->priority:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_7

    .line 272
    const-string v2, "<priority>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/push/Presence;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</priority>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_7
    iget-object v2, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v3, Lmiui/push/Presence$Mode;->available:Lmiui/push/Presence$Mode;

    if-eq v2, v3, :cond_8

    .line 275
    const-string v2, "<show>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</show>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_8
    invoke-virtual {p0}, Lmiui/push/Presence;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0}, Lmiui/push/Presence;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    .line 282
    .local v1, error:Lmiui/push/XMPPError;
    if-eqz v1, :cond_9

    .line 283
    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_9
    const-string v2, "</presence>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
