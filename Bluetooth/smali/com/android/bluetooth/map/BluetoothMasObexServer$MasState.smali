.class public final enum Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;
.super Ljava/lang/Enum;
.source "BluetoothMasObexServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasObexServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MasState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_BROWSE_FOLDER:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_BROWSE_FOLDER_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_CONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_CONNECTING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_DISCONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_DISCONNECTING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_GET_FILE_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_GET_MSG:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_GET_MSG_LIST:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_GET_MSG_LIST_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_GET_MSG_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_PUSH_MESSAGE:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_SET_FOLDER:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_SET_MSG_STATUS:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_SET_NOTIFICATION_REG:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

.field public static final enum MAS_SERVER_UPDATE_INBOX:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_CONNECTING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 91
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_DISCONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_DISCONNECTING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 92
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_CONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 93
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_DISCONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 94
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_SET_FOLDER"

    invoke-direct {v0, v1, v7}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_SET_FOLDER:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 95
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_GET_FILE_PENDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_GET_FILE_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 96
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_BROWSE_FOLDER_PENDING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_BROWSE_FOLDER_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 97
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_BROWSE_FOLDER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_BROWSE_FOLDER:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 98
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_GET_MSG_LIST_PENDING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_GET_MSG_LIST_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 99
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_GET_MSG_LIST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_GET_MSG_LIST:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 100
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_GET_MSG_PENDING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_GET_MSG_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 101
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_GET_MSG"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_GET_MSG:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 102
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_SET_MSG_STATUS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_SET_MSG_STATUS:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 103
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_SET_NOTIFICATION_REG"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_SET_NOTIFICATION_REG:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 104
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_UPDATE_INBOX"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_UPDATE_INBOX:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 105
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    const-string v1, "MAS_SERVER_PUSH_MESSAGE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_PUSH_MESSAGE:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_CONNECTING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_DISCONNECTING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_CONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_DISCONNECTED:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_SET_FOLDER:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_GET_FILE_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_BROWSE_FOLDER_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_BROWSE_FOLDER:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_GET_MSG_LIST_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_GET_MSG_LIST:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_GET_MSG_PENDING:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_GET_MSG:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_SET_MSG_STATUS:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_SET_NOTIFICATION_REG:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_UPDATE_INBOX:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->MAS_SERVER_PUSH_MESSAGE:Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->$VALUES:[Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;
    .locals 1
    .parameter "name"

    .prologue
    .line 89
    const-class v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->$VALUES:[Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    invoke-virtual {v0}, [Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/map/BluetoothMasObexServer$MasState;

    return-object v0
.end method
