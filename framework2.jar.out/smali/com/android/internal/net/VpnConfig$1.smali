.class final Lcom/android/internal/net/VpnConfig$1;
.super Ljava/lang/Object;
.source "VpnConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/VpnConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/net/VpnConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnConfig;
    .locals 3
    .parameter "in"

    .prologue
    .line 126
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 127
    .local v0, config:Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 131
    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    sget-object v2, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 132
    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 135
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 138
    return-object v0

    .line 137
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/net/VpnConfig;
    .locals 1
    .parameter "size"

    .prologue
    .line 143
    new-array v0, p1, [Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/internal/net/VpnConfig$1;->newArray(I)[Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    return-object v0
.end method
