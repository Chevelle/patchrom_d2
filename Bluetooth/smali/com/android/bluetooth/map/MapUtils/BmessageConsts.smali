.class public Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
.super Ljava/lang/Object;
.source "BmessageConsts.java"


# instance fields
.field public bmsg_version:Ljava/lang/String;

.field public body_charset:Ljava/lang/String;

.field public body_encoding:Ljava/lang/String;

.field public body_language:Ljava/lang/String;

.field public body_length:I

.field public body_msg:Ljava/lang/String;

.field public body_part_ID:Ljava/lang/String;

.field public folder:Ljava/lang/String;

.field public originator_vcard_email:Ljava/lang/String;

.field public originator_vcard_name:Ljava/lang/String;

.field public originator_vcard_phone_number:Ljava/lang/String;

.field public recipient_vcard_email:Ljava/lang/String;

.field public recipient_vcard_name:Ljava/lang/String;

.field public recipient_vcard_phone_number:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public vcard_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_email:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_email:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    .line 46
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_part_ID:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_language:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_charset:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->subject:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBmsg_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    return-object v0
.end method

.method public getBody_charset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_charset:Ljava/lang/String;

    return-object v0
.end method

.method public getBody_encoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getBody_language()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_language:Ljava/lang/String;

    return-object v0
.end method

.method public getBody_length()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    return v0
.end method

.method public getBody_msg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getBody_part_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_part_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatorVcard_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_email:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatorVcard_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatorVcard_phone_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientVcard_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_email:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientVcard_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientVcard_phone_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVcard_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    return-object v0
.end method

.method public setBmsg_version(Ljava/lang/String;)V
    .locals 0
    .parameter "bmsg_version"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setBody_charset(Ljava/lang/String;)V
    .locals 0
    .parameter "body_charset"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_charset:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setBody_encoding(Ljava/lang/String;)V
    .locals 0
    .parameter "body_encoding"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setBody_language(Ljava/lang/String;)V
    .locals 0
    .parameter "body_language"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_language:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setBody_length(I)V
    .locals 0
    .parameter "body_length"

    .prologue
    .line 192
    iput p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    .line 193
    return-void
.end method

.method public setBody_msg(Ljava/lang/String;)V
    .locals 0
    .parameter "body_msg"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setBody_part_ID(Ljava/lang/String;)V
    .locals 0
    .parameter "body_part_ID"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_part_ID:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setOriginatorVcard_email(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_email:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setOriginatorVcard_name(Ljava/lang/String;)V
    .locals 0
    .parameter "vcard_name"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setOriginatorVcard_phone_number(Ljava/lang/String;)V
    .locals 0
    .parameter "vcard_phone_number"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setRecipientVcard_email(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_email:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setRecipientVcard_name(Ljava/lang/String;)V
    .locals 0
    .parameter "vcard_name"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setRecipientVcard_phone_number(Ljava/lang/String;)V
    .locals 0
    .parameter "vcard_phone_number"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->subject:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setVcard_version(Ljava/lang/String;)V
    .locals 0
    .parameter "vcard_version"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    .line 108
    return-void
.end method
