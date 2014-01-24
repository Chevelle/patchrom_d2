.class public Lmiui/util/HuangLiHelper;
.super Ljava/lang/Object;
.source "HuangLiHelper.java"


# static fields
.field private static final DATA:[Ljava/lang/String; = null

.field public static final END_TIME:Ljava/lang/Long; = null

.field public static final HUANG_LI_RESOURCE_NAME:Ljava/lang/String; = "etc/huangli.idf"

.field public static final START_TIME:Ljava/lang/Long; = null

.field private static final TAG:Ljava/lang/String; = "HuangLiHelper"

.field private static sSingleton:Lmiui/util/HuangLiHelper;


# instance fields
.field private mReader:Lmiui/util/DensityIndexFile$Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1f

    const/16 v4, 0xb

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 19
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3, v2}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lmiui/util/HuangLiHelper;->START_TIME:Ljava/lang/Long;

    .line 20
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, v4, v5}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lmiui/util/HuangLiHelper;->END_TIME:Ljava/lang/Long;

    .line 21
    const/16 v0, 0x71

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7acb\u7891"

    aput-object v1, v0, v3

    const-string v1, "\u796d\u7940"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "\u8d77\u57fa"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u79fb\u5f99"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5f00\u4ed3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u7834\u5c4b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4f5c\u5395"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5408\u5e10"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5165\u5b66"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u4ea4\u6613"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u9020\u4ed3"

    aput-object v2, v0, v1

    const-string v1, "\u6302\u533e"

    aput-object v1, v0, v4

    const/16 v1, 0xc

    const-string v2, "\u7834\u571f"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u5408\u810a"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u542f\u6512"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u658b\u91ae"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u6559\u725b\u9a6c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u6355\u6349"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u5b89\u846c"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u4f59\u4e8b\u52ff\u53d6"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u5b89\u9999"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u5b89\u95e8"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u4e0a\u6881"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u5408\u5bff\u6728"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u884c\u4e27"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u8ba2\u76df"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u7ecf\u7edc"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u7ed3\u7f51"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u9020\u6865"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u5b89\u5e8a"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u53d6\u6e14"

    aput-object v2, v0, v1

    const-string v1, "\u6c90\u6d74"

    aput-object v1, v0, v5

    const/16 v1, 0x20

    const-string v2, "\u79fb\u67e9"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u9020\u755c\u6906\u6816"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u916c\u795e"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u8fdb\u4eba\u53e3"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u5f00\u751f\u575f"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u683d\u79cd"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u4f5c\u6881"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u666e\u6e21"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u6398\u4e95"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u8c22\u571f"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u7acb\u5238"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u5272\u871c"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u4e58\u8239"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u5165\u5b85"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u5206\u5c45"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u67b6\u9a6c"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u5f52\u5b81"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u5b89\u7893\u78d1"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u96d5\u523b"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u5851\u7ed8"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u7948\u798f"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u5f00\u5149"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\u65ad\u8681"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\u51fa\u706b"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\u5165\u6b93"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u9020\u5c4b"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\u4fee\u9970\u57a3\u5899"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\u9020\u8f66\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\u51fa\u884c"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\u88c1\u8863"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\u6574\u624b\u8db3\u7532"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\u5e73\u6cbb\u9053\u6d82"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\u9020\u8239"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\u5f52\u5cab"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\u7eb3\u5a7f"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\u95ee\u540d"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\u96c7\u5eb8"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\u51a0\u7b04"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\u5f00\u67f1\u773c"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\u4fee\u95e8"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\u7406\u53d1"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\u4e60\u827a"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\u7eb3\u755c"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\u5f00\u6e20"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\u7f6e\u4ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\u7eb3\u8d22"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\u5b89\u673a\u68b0"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\u51fa\u8d27\u8d22"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\u62c6\u5378"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\u7eb3\u91c7"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\u4fee\u575f"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\u626b\u820d"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\u6c42\u55e3"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\u653e\u6c34"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\u8865\u57a3"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\u63a2\u75c5"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\u6c42\u533b"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\u9488\u7078"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\u7ad6\u67f1"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\u6210\u670d"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\u5f00\u6c60"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\u4f10\u6728"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\u4f5c\u7076"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\u8bcd\u8bbc"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\u8d74\u4efb"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\u574f\u57a3"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\u585e\u7a74"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\u7b51\u5824"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\u4f1a\u4eb2\u53cb"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\u7267\u517b"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\u8bf8\u4e8b\u4e0d\u5b9c"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\u9020\u5e99"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\u89e3\u9664"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\u9664\u670d"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\u754b\u730e"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\u6cbb\u75c5"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\u5b9a\u78c9"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\u5f00\u5e02"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\u52a8\u571f"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\u5ac1\u5a36"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\u4fee\u9020"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/util/HuangLiHelper;->DATA:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0}, Lmiui/util/HuangLiHelper;->initResource()V

    .line 39
    return-void
.end method

.method public static declared-synchronized getIntance()Lmiui/util/HuangLiHelper;
    .locals 2

    .prologue
    .line 88
    const-class v1, Lmiui/util/HuangLiHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/util/HuangLiHelper;->sSingleton:Lmiui/util/HuangLiHelper;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lmiui/util/HuangLiHelper;

    invoke-direct {v0}, Lmiui/util/HuangLiHelper;-><init>()V

    sput-object v0, Lmiui/util/HuangLiHelper;->sSingleton:Lmiui/util/HuangLiHelper;

    .line 91
    :cond_0
    sget-object v0, Lmiui/util/HuangLiHelper;->sSingleton:Lmiui/util/HuangLiHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initResource()V
    .locals 3

    .prologue
    .line 43
    :try_start_0
    new-instance v1, Lmiui/util/DensityIndexFile$Reader;

    const-string v2, "etc/huangli.idf"

    invoke-direct {v1, v2}, Lmiui/util/DensityIndexFile$Reader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/util/HuangLiHelper;->mReader:Lmiui/util/DensityIndexFile$Reader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HuangLiHelper"

    const-string v2, "Init resource IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lmiui/util/HuangLiHelper;->mReader:Lmiui/util/DensityIndexFile$Reader;

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v1, p0, Lmiui/util/HuangLiHelper;->mReader:Lmiui/util/DensityIndexFile$Reader;

    invoke-virtual {v1}, Lmiui/util/DensityIndexFile$Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    const-string v1, "HuangLiHelper"

    const-string v2, "finalize IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHuangLi(Ljava/util/Date;)[Ljava/lang/String;
    .locals 14
    .parameter "date"

    .prologue
    .line 55
    iget-object v10, p0, Lmiui/util/HuangLiHelper;->mReader:Lmiui/util/DensityIndexFile$Reader;

    if-eqz v10, :cond_0

    if-nez p1, :cond_2

    .line 56
    :cond_0
    const/4 v9, 0x0

    .line 84
    :cond_1
    :goto_0
    return-object v9

    .line 59
    :cond_2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 60
    .local v0, currentTime:J
    sget-object v10, Lmiui/util/HuangLiHelper;->START_TIME:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-ltz v10, :cond_3

    sget-object v10, Lmiui/util/HuangLiHelper;->END_TIME:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-lez v10, :cond_4

    .line 61
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 64
    :cond_4
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    .line 65
    .local v9, value:[Ljava/lang/String;
    sget-object v10, Lmiui/util/HuangLiHelper;->START_TIME:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v0, v10

    const-wide/32 v12, 0x5265c00

    div-long/2addr v10, v12

    long-to-int v7, v10

    .line 66
    .local v7, offset:I
    iget-object v10, p0, Lmiui/util/HuangLiHelper;->mReader:Lmiui/util/DensityIndexFile$Reader;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v7, v12}, Lmiui/util/DensityIndexFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ","

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, data:[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v8, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v10, v2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 69
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v10, v2

    if-ge v3, v10, :cond_1

    .line 70
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 71
    aget-object v10, v2, v3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 72
    aget-object v10, v2, v3

    const-string v11, "\u3001"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, keys:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    array-length v10, v6

    if-ge v5, v10, :cond_6

    .line 74
    aget-object v10, v6, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 75
    .local v4, index:I
    sget-object v10, Lmiui/util/HuangLiHelper;->DATA:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_5

    .line 76
    sget-object v10, Lmiui/util/HuangLiHelper;->DATA:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 80
    .end local v4           #index:I
    .end local v5           #j:I
    .end local v6           #keys:[Ljava/lang/String;
    :cond_6
    const-string v10, " "

    invoke-static {v10, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
