.class public Landroid/app/AppOpsManager$PackageOps;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageOps"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 789
    new-instance v0, Landroid/app/AppOpsManager$PackageOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$PackageOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$PackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    .line 782
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 784
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 785
    iget-object v2, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    sget-object v3, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p3, entries:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p1, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    .line 748
    iput p2, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    .line 749
    iput-object p3, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    .line 750
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public getOps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 771
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    iget v1, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 775
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_0
    return-void
.end method
