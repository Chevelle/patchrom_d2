.class public Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
.super Lcom/android/internal/util/AsyncChannel;
.source "DcAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x41000

.field private static final CMD_TO_STRING_COUNT:I = 0xe

.field private static final DBG:Z = false

.field public static final REQ_GET_APNSETTING:I = 0x41004

.field public static final REQ_GET_CID:I = 0x41002

.field public static final REQ_GET_LINK_CAPABILITIES:I = 0x4100a

.field public static final REQ_GET_LINK_PROPERTIES:I = 0x41006

.field public static final REQ_IS_INACTIVE:I = 0x41000

.field public static final REQ_RESET:I = 0x4100c

.field public static final REQ_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41008

.field public static final RSP_GET_APNSETTING:I = 0x41005

.field public static final RSP_GET_CID:I = 0x41003

.field public static final RSP_GET_LINK_CAPABILITIES:I = 0x4100b

.field public static final RSP_GET_LINK_PROPERTIES:I = 0x41007

.field public static final RSP_IS_INACTIVE:I = 0x41001

.field public static final RSP_RESET:I = 0x4100d

.field public static final RSP_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41009

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private mDcThreadId:J

.field private mLogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "REQ_IS_INACTIVE"

    aput-object v2, v0, v1

    .line 68
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "RSP_IS_INACTIVE"

    aput-object v2, v0, v1

    .line 69
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "REQ_GET_CID"

    aput-object v2, v0, v1

    .line 70
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "RSP_GET_CID"

    aput-object v2, v0, v1

    .line 71
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "REQ_GET_APNSETTING"

    aput-object v2, v0, v1

    .line 72
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "RSP_GET_APNSETTING"

    aput-object v2, v0, v1

    .line 73
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "REQ_GET_LINK_PROPERTIES"

    aput-object v2, v0, v1

    .line 74
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "RSP_GET_LINK_PROPERTIES"

    aput-object v2, v0, v1

    .line 75
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "REQ_SET_LINK_PROPERTIES_HTTP_PROXY"

    aput-object v2, v0, v1

    .line 77
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "RSP_SET_LINK_PROPERTIES_HTTP_PROXY"

    aput-object v2, v0, v1

    .line 79
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "REQ_GET_LINK_CAPABILITIES"

    aput-object v2, v0, v1

    .line 80
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "RSP_GET_LINK_CAPABILITIES"

    aput-object v2, v0, v1

    .line 81
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "REQ_RESET"

    aput-object v2, v0, v1

    .line 82
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "RSP_RESET"

    aput-object v2, v0, v1

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 2
    .parameter "dc"
    .parameter "logTag"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDcThreadId:J

    .line 118
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mLogTag:Ljava/lang/String;

    .line 119
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 2
    .parameter "cmd"

    .prologue
    const v1, 0x41000

    .line 87
    sub-int/2addr p0, v1

    .line 88
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    add-int v0, p0, v1

    invoke-static {v0}, Lcom/android/internal/util/AsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isCallerOnDifferentThread()Z
    .locals 5

    .prologue
    .line 426
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 427
    .local v0, curThreadId:J
    iget-wide v3, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDcThreadId:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 429
    .local v2, value:Z
    :goto_0
    return v2

    .line 427
    .end local v2           #value:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnectionAc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void
.end method


# virtual methods
.method public bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILandroid/os/Message;)V
    .locals 7
    .parameter "apnContext"
    .parameter "initialMaxRetry"
    .parameter "profileId"
    .parameter "rilRadioTechnology"
    .parameter "onCompletedMsg"

    .prologue
    .line 379
    const/high16 v6, 0x4

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILandroid/os/Message;)V

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 382
    return-void
.end method

.method public getApnSettingSync()Lcom/android/internal/telephony/dataconnection/DataProfile;
    .locals 4

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const v2, 0x41004

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x41005

    if-ne v2, v3, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v1

    .line 240
    .end local v0           #response:Landroid/os/Message;
    .local v1, value:Lcom/android/internal/telephony/dataconnection/DataProfile;
    :goto_0
    return-object v1

    .line 234
    .end local v1           #value:Lcom/android/internal/telephony/dataconnection/DataProfile;
    .restart local v0       #response:Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApnSetting error response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x0

    .restart local v1       #value:Lcom/android/internal/telephony/dataconnection/DataProfile;
    goto :goto_0

    .line 238
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #value:Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getDataProfile()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v1

    .restart local v1       #value:Lcom/android/internal/telephony/dataconnection/DataProfile;
    goto :goto_0
.end method

.method public getCidSync()I
    .locals 4

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    const v2, 0x41002

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x41003

    if-ne v2, v3, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspCid(Landroid/os/Message;)I

    move-result v1

    .line 198
    .end local v0           #response:Landroid/os/Message;
    .local v1, value:I
    :goto_0
    return v1

    .line 192
    .end local v1           #value:I
    .restart local v0       #response:Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rspCid error response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 193
    const/4 v1, -0x1

    .restart local v1       #value:I
    goto :goto_0

    .line 196
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #value:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v1

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public getDataConnectionIdSync()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getDataConnectionId()I

    move-result v0

    return v0
.end method

.method public getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;
    .locals 4

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    const v2, 0x4100a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 341
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x4100b

    if-ne v2, v3, :cond_0

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspLinkCapabilities(Landroid/os/Message;)Landroid/net/LinkCapabilities;

    move-result-object v1

    .line 349
    .end local v0           #response:Landroid/os/Message;
    .local v1, value:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v1

    .line 344
    .end local v1           #value:Landroid/net/LinkCapabilities;
    .restart local v0       #response:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Landroid/net/LinkCapabilities;
    goto :goto_0

    .line 347
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #value:Landroid/net/LinkCapabilities;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v1

    .restart local v1       #value:Landroid/net/LinkCapabilities;
    goto :goto_0
.end method

.method public getLinkPropertiesSync()Landroid/net/LinkProperties;
    .locals 4

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    const v2, 0x41006

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 273
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x41007

    if-ne v2, v3, :cond_0

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 282
    .end local v0           #response:Landroid/os/Message;
    .local v1, value:Landroid/net/LinkProperties;
    :goto_0
    return-object v1

    .line 276
    .end local v1           #value:Landroid/net/LinkProperties;
    .restart local v0       #response:Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLinkProperties error response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x0

    .restart local v1       #value:Landroid/net/LinkProperties;
    goto :goto_0

    .line 280
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #value:Landroid/net/LinkProperties;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .restart local v1       #value:Landroid/net/LinkProperties;
    goto :goto_0
.end method

.method public isInactiveSync()Z
    .locals 4

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    const v2, 0x41000

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x41001

    if-ne v2, v3, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspIsInactive(Landroid/os/Message;)Z

    move-result v1

    .line 158
    .end local v0           #response:Landroid/os/Message;
    .local v1, value:Z
    :goto_0
    return v1

    .line 152
    .end local v1           #value:Z
    .restart local v0       #response:Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rspIsInactive error response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x0

    .restart local v1       #value:Z
    goto :goto_0

    .line 156
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #value:Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getIsInactive()Z

    move-result v1

    .restart local v1       #value:Z
    goto :goto_0
.end method

.method public reqApnSetting()V
    .locals 1

    .prologue
    .line 206
    const v0, 0x41004

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 208
    return-void
.end method

.method public reqCid()V
    .locals 1

    .prologue
    .line 166
    const v0, 0x41002

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 168
    return-void
.end method

.method public reqIsInactive()V
    .locals 1

    .prologue
    .line 126
    const v0, 0x41000

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 128
    return-void
.end method

.method public reqLinkCapabilities()V
    .locals 1

    .prologue
    .line 316
    const v0, 0x4100a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 318
    return-void
.end method

.method public reqLinkProperties()V
    .locals 1

    .prologue
    .line 248
    const v0, 0x41006

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 250
    return-void
.end method

.method public reqReset()V
    .locals 1

    .prologue
    .line 357
    const v0, 0x4100c

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 359
    return-void
.end method

.method public reqSetLinkPropertiesHttpProxy(Landroid/net/ProxyProperties;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 290
    const v0, 0x41008

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 292
    return-void
.end method

.method public rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/dataconnection/DataProfile;
    .locals 1
    .parameter "response"

    .prologue
    .line 217
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 219
    .local v0, retVal:Lcom/android/internal/telephony/dataconnection/DataProfile;
    return-object v0
.end method

.method public rspCid(Landroid/os/Message;)I
    .locals 1
    .parameter "response"

    .prologue
    .line 177
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 179
    .local v0, retVal:I
    return v0
.end method

.method public rspIsInactive(Landroid/os/Message;)Z
    .locals 2
    .parameter "response"

    .prologue
    const/4 v0, 0x1

    .line 136
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 138
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 136
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rspLinkCapabilities(Landroid/os/Message;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "response"

    .prologue
    .line 327
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkCapabilities;

    .line 329
    .local v0, retVal:Landroid/net/LinkCapabilities;
    return-object v0
.end method

.method public rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "response"

    .prologue
    .line 259
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkProperties;

    .line 261
    .local v0, retVal:Landroid/net/LinkProperties;
    return-object v0
.end method

.method public setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    const v1, 0x41008

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41009

    if-ne v1, v2, :cond_0

    .line 309
    .end local v0           #response:Landroid/os/Message;
    :goto_0
    return-void

    .line 304
    .restart local v0       #response:Landroid/os/Message;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLinkPropertiesHttpPoxy error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    .end local v0           #response:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkPropertiesHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0
.end method

.method public tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "apnContext"
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    .line 395
    const v0, 0x40004

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 397
    return-void
.end method

.method public tearDownAll(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    .line 408
    const v0, 0x40006

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 410
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
