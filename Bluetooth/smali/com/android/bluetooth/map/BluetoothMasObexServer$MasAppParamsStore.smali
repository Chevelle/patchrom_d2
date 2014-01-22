.class Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;
.super Ljava/lang/Object;
.source "BluetoothMasObexServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasObexServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasAppParamsStore"
.end annotation


# instance fields
.field private appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasObexServer;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMasObexServer;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->this$0:Lcom/android/bluetooth/map/BluetoothMasObexServer;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    .line 144
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMasAppParams;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    .line 145
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->clear()V

    .line 146
    return-void
.end method

.method private final getUint16BigEndian(BB)I
    .locals 3
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 188
    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, p2, 0xff

    or-int v0, v1, v2

    .line 190
    .local v0, retVal:I
    return v0
.end method

.method private final getUint32BigEndian(BBBB)J
    .locals 9
    .parameter "b1"
    .parameter "b2"
    .parameter "b3"
    .parameter "b4"

    .prologue
    const-wide/16 v7, 0xff

    .line 195
    int-to-long v2, p1

    and-long/2addr v2, v7

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    int-to-long v4, p2

    and-long/2addr v4, v7

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    int-to-long v4, p3

    and-long/2addr v4, v7

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    int-to-long v4, p4

    and-long/2addr v4, v7

    or-long v0, v2, v4

    .line 199
    .local v0, retVal:J
    return-wide v0
.end method

.method private final validateTag(JJJJJ)Z
    .locals 2
    .parameter "tagVal"
    .parameter "tagLen"
    .parameter "tagMinVal"
    .parameter "tagMaxVal"
    .parameter "tagActualLen"

    .prologue
    const/4 v0, 0x0

    .line 204
    cmp-long v1, p3, p9

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    cmp-long v1, p1, p5

    if-ltz v1, :cond_0

    cmp-long v1, p1, p7

    if-gtz v1, :cond_0

    .line 211
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 124
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "Clear AppParams : Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    const/16 v1, 0x400

    iput v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    const/16 v1, 0xff

    iput-short v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    const-wide/32 v1, 0xffff

    iput-wide v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v5, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    .line 139
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iput-byte v5, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    .line 140
    return-void
.end method

.method public final get()Lcom/android/bluetooth/map/BluetoothMasAppParams;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasObexServer"

    const-string v3, "Create MasAppParams struct for service : Enter"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMasAppParams;-><init>()V

    .line 152
    .local v0, tmp:Lcom/android/bluetooth/map/BluetoothMasAppParams;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    iput v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    .line 153
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    iput v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    .line 154
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-short v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    iput-short v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    .line 155
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-wide v3, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    iput-wide v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    .line 157
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Attachment:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Attachment:B

    .line 158
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    .line 160
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    .line 161
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    .line 162
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    .line 164
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    .line 165
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    .line 166
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    .line 168
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v2

    :goto_2
    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-nez v1, :cond_4

    :goto_3
    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    .line 173
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    .line 174
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    .line 175
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Notification:B

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Notification:B

    .line 177
    return-object v0

    .line 168
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :cond_4
    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final isMaxListCountZero()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final parse([B)Z
    .locals 13
    .parameter "params"

    .prologue
    .line 215
    const/4 v11, 0x0

    .line 218
    .local v11, i:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "Parse App. Params: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    if-nez p1, :cond_2

    .line 221
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BluetoothMasObexServer"

    const-string v1, "No App. Params to parse: Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    .line 225
    :cond_2
    :goto_1
    array-length v0, p1

    if-ge v11, v0, :cond_29

    .line 226
    aget-byte v0, p1, v11

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 228
    :pswitch_1
    add-int/lit8 v11, v11, 0x2

    .line 229
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->getUint16BigEndian(BB)I

    move-result v1

    iput v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    .line 230
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params i+1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxlistcount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0xffff

    const-wide/16 v9, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :cond_4
    add-int/lit8 v11, v11, 0x2

    .line 242
    goto :goto_1

    .line 245
    :pswitch_2
    add-int/lit8 v11, v11, 0x2

    .line 246
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->getUint16BigEndian(BB)I

    move-result v1

    iput v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    .line 248
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 249
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params i+1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxlistcount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0xffff

    const-wide/16 v9, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 257
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 259
    :cond_6
    add-int/lit8 v11, v11, 0x2

    .line 260
    goto/16 :goto_1

    .line 263
    :pswitch_3
    add-int/lit8 v11, v11, 0x1

    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    .line 265
    const/4 v12, 0x1

    .local v12, j:I
    :goto_2
    aget-byte v0, p1, v11

    if-gt v12, v0, :cond_7

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v2, v11, v12

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    .line 265
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 268
    :cond_7
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterPeriodBegin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_8
    aget-byte v0, p1, v11

    add-int/2addr v11, v0

    .line 273
    add-int/lit8 v11, v11, 0x1

    .line 274
    goto/16 :goto_1

    .line 277
    .end local v12           #j:I
    :pswitch_4
    add-int/lit8 v11, v11, 0x1

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    .line 279
    const/4 v12, 0x1

    .restart local v12       #j:I
    :goto_3
    aget-byte v0, p1, v11

    if-gt v12, v0, :cond_9

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v2, v11, v12

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    .line 279
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 282
    :cond_9
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 283
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterPeriodEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_a
    aget-byte v0, p1, v11

    add-int/2addr v11, v0

    .line 286
    add-int/lit8 v11, v11, 0x1

    .line 287
    goto/16 :goto_1

    .line 290
    .end local v12           #j:I
    :pswitch_5
    add-int/lit8 v11, v11, 0x1

    .line 291
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    .line 292
    const/4 v12, 0x1

    .restart local v12       #j:I
    :goto_4
    aget-byte v0, p1, v11

    if-gt v12, v0, :cond_b

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v2, v11, v12

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    .line 292
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 296
    :cond_b
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 297
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterPeriodRecipient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_c
    aget-byte v0, p1, v11

    add-int/2addr v11, v0

    .line 301
    add-int/lit8 v11, v11, 0x1

    .line 302
    goto/16 :goto_1

    .line 305
    .end local v12           #j:I
    :pswitch_6
    add-int/lit8 v11, v11, 0x1

    .line 306
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    .line 307
    const/4 v12, 0x1

    .restart local v12       #j:I
    :goto_5
    aget-byte v0, p1, v11

    if-gt v12, v0, :cond_d

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v2, v11, v12

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    .line 307
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 310
    :cond_d
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 311
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterPeriodOriginator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_e
    aget-byte v0, p1, v11

    add-int/2addr v11, v0

    .line 315
    add-int/lit8 v11, v11, 0x1

    .line 316
    goto/16 :goto_1

    .line 319
    .end local v12           #j:I
    :pswitch_7
    add-int/lit8 v11, v11, 0x2

    .line 320
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    .line 321
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 322
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FilterMessageType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_f
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xf

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_10

    .line 329
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 331
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 332
    goto/16 :goto_1

    .line 335
    :pswitch_8
    add-int/lit8 v11, v11, 0x2

    .line 336
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    .line 337
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 338
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FilterReadStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_11
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x2

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_12

    .line 345
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 347
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 348
    goto/16 :goto_1

    .line 351
    :pswitch_9
    add-int/lit8 v11, v11, 0x2

    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    .line 353
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 354
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FilterPriority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_13
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x2

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_14

    .line 361
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 363
    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 364
    goto/16 :goto_1

    .line 367
    :pswitch_a
    add-int/lit8 v11, v11, 0x2

    .line 368
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    .line 369
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 370
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " StatusIndicator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_15
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_16

    .line 377
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 379
    :cond_16
    add-int/lit8 v11, v11, 0x1

    .line 380
    goto/16 :goto_1

    .line 383
    :pswitch_b
    add-int/lit8 v11, v11, 0x2

    .line 384
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    .line 385
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 386
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " StatusValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_17
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 393
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 395
    :cond_18
    add-int/lit8 v11, v11, 0x1

    .line 396
    goto/16 :goto_1

    .line 399
    :pswitch_c
    add-int/lit8 v11, v11, 0x2

    .line 400
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    iput-short v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    .line 401
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 402
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SubjectLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-short v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_19
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-short v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0xff

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 409
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 411
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    .line 412
    goto/16 :goto_1

    .line 415
    :pswitch_d
    add-int/lit8 v11, v11, 0x2

    .line 416
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, v11, 0x2

    aget-byte v3, p1, v3

    add-int/lit8 v4, v11, 0x3

    aget-byte v4, p1, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->getUint32BigEndian(BBBB)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    .line 418
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 420
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    const-wide/32 v1, 0xffff

    iput-wide v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    .line 422
    :cond_1b
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 423
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params i+1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "params[i+2]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v11, 0x2

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "params[i+3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v11, 0x3

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ParameterMask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-wide v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_1c
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-wide v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0xffff

    const-wide/16 v9, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 432
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 434
    :cond_1d
    add-int/lit8 v11, v11, 0x4

    .line 435
    goto/16 :goto_1

    .line 438
    :pswitch_e
    add-int/lit8 v11, v11, 0x2

    .line 439
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    .line 440
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 441
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Charset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1e
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 448
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 450
    :cond_1f
    add-int/lit8 v11, v11, 0x1

    .line 451
    goto/16 :goto_1

    .line 454
    :pswitch_f
    add-int/lit8 v11, v11, 0x2

    .line 455
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    .line 456
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 457
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Transparent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_20
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_21

    .line 464
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 466
    :cond_21
    add-int/lit8 v11, v11, 0x1

    .line 467
    goto/16 :goto_1

    .line 470
    :pswitch_10
    add-int/lit8 v11, v11, 0x2

    .line 471
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    .line 472
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 473
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_22
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Retry:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_23

    .line 480
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 482
    :cond_23
    add-int/lit8 v11, v11, 0x1

    .line 483
    goto/16 :goto_1

    .line 486
    :pswitch_11
    add-int/lit8 v11, v11, 0x2

    .line 487
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Attachment:B

    .line 488
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 489
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Attachment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Attachment:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_24
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Attachment:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_25

    .line 496
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 498
    :cond_25
    add-int/lit8 v11, v11, 0x1

    .line 499
    goto/16 :goto_1

    .line 502
    :pswitch_12
    add-int/lit8 v11, v11, 0x2

    .line 503
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    .line 504
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMasObexServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 505
    const-string v0, "BluetoothMasObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " params i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Fraction Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_26
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FractionRequest:B

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_27

    .line 512
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 514
    :cond_27
    add-int/lit8 v11, v11, 0x1

    .line 515
    goto/16 :goto_1

    .line 518
    :pswitch_13
    add-int/lit8 v11, v11, 0x2

    .line 519
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    aget-byte v1, p1, v11

    iput-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Notification:B

    .line 520
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->appParams:Lcom/android/bluetooth/map/BluetoothMasAppParams;

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    int-to-long v1, v0

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, p1, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasAppParamsStore;->validateTag(JJJJJ)Z

    move-result v0

    if-nez v0, :cond_28

    .line 524
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 527
    :cond_28
    add-int/lit8 v11, v11, 0x1

    .line 528
    goto/16 :goto_1

    .line 534
    :cond_29
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_11
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_12
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
