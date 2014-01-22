.class Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
.super Ljava/lang/Object;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HealthChannel"
.end annotation


# instance fields
.field private mChannelFd:Landroid/os/ParcelFileDescriptor;

.field private mChannelId:I

.field private mChannelType:I

.field private mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mState:I

.field final synthetic this$0:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 1
    .parameter
    .parameter "device"
    .parameter "config"
    .parameter "channelType"

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    .line 821
    iput-object p2, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 822
    iput-object p3, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 823
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I

    .line 824
    iput p4, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelType:I

    .line 825
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I

    .line 826
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;ILcom/android/bluetooth/hdp/HealthService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 809
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 809
    iget v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 809
    iput p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 809
    iget v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 809
    iput p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I

    return p1
.end method
