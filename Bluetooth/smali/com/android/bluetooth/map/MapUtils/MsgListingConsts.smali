.class public Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
.super Ljava/lang/Object;
.source "MsgListingConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;
    }
.end annotation


# instance fields
.field public attachment_size:I

.field public contains_text:Ljava/lang/String;

.field public datetime:Ljava/lang/String;

.field public msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

.field public msg_handle:J

.field public msg_protected:Ljava/lang/String;

.field public priority:Ljava/lang/String;

.field public read:Ljava/lang/String;

.field public recepient_addressing:Ljava/lang/String;

.field public recepient_name:Ljava/lang/String;

.field public reception_status:Ljava/lang/String;

.field public replyto_addressing:Ljava/lang/String;

.field public sendRecipient_addressing:Z

.field public sendSubject:Z

.field public sender_addressing:Ljava/lang/String;

.field public sender_name:Ljava/lang/String;

.field public sent:Ljava/lang/String;

.field public size:I

.field public subject:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;-><init>(Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_handle:J

    .line 48
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    .line 49
    iput-boolean v3, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendSubject:Z

    .line 50
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    .line 54
    iput-boolean v3, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendRecipient_addressing:Z

    .line 55
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    .line 57
    iput v3, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    .line 58
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->reception_status:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    .line 60
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_protected:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->replyto_addressing:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttachment_size()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    return v0
.end method

.method public getContains_text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    return-object v0
.end method

.method public getDatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg_handle()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_handle:J

    return-wide v0
.end method

.method public getMsg_protected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_protected:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    return-object v0
.end method

.method public getRecepient_addressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    return-object v0
.end method

.method public getRecepient_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReception_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->reception_status:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTo_addressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSender_addressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSender_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAttachment_size(I)V
    .locals 0
    .parameter "attachment_size"

    .prologue
    .line 161
    iput p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    .line 162
    return-void
.end method

.method public setContains_text(Ljava/lang/String;)V
    .locals 0
    .parameter "contains_text"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setDatetime(Ljava/lang/String;)V
    .locals 0
    .parameter "datetime"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setMsg_handle(J)V
    .locals 0
    .parameter "msg_handle"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_handle:J

    .line 73
    return-void
.end method

.method public setMsg_protected(Ljava/lang/String;)V
    .locals 0
    .parameter "msg_protected"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_protected:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setRead(Ljava/lang/String;)V
    .locals 0
    .parameter "read"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setRecepient_addressing(Ljava/lang/String;)V
    .locals 0
    .parameter "recepient_addressing"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setRecepient_name(Ljava/lang/String;)V
    .locals 0
    .parameter "recepient_name"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setReception_status(Ljava/lang/String;)V
    .locals 0
    .parameter "reception_status"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->reception_status:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setReplyTo_addressing(Ljava/lang/String;)V
    .locals 0
    .parameter "replyto_addressing"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->replyto_addressing:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setSendRecipient_addressing(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendRecipient_addressing:Z

    .line 125
    return-void
.end method

.method public setSendSubject(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendSubject:Z

    .line 85
    return-void
.end method

.method public setSender_addressing(Ljava/lang/String;)V
    .locals 0
    .parameter "sender_addressing"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSender_name(Ljava/lang/String;)V
    .locals 0
    .parameter "sender_name"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setSent(Ljava/lang/String;)V
    .locals 0
    .parameter "sent"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    .line 146
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    .line 138
    return-void
.end method
