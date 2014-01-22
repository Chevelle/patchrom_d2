.class Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;
.super Ljava/lang/Object;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelStateEvent"
.end annotation


# instance fields
.field mAddr:[B

.field mAppId:I

.field mCfgIndex:I

.field mChannelId:I

.field mFd:Ljava/io/FileDescriptor;

.field mState:I

.field final synthetic this$0:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;)V
    .locals 0
    .parameter
    .parameter "appId"
    .parameter "addr"
    .parameter "cfgIndex"
    .parameter "channelId"
    .parameter "state"
    .parameter "fileDescriptor"

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput p2, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAppId:I

    .line 841
    iput-object p3, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAddr:[B

    .line 842
    iput p4, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mCfgIndex:I

    .line 843
    iput p6, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mState:I

    .line 844
    iput p5, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mChannelId:I

    .line 845
    iput-object p7, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mFd:Ljava/io/FileDescriptor;

    .line 846
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;Lcom/android/bluetooth/hdp/HealthService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 830
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;-><init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;)V

    return-void
.end method
