.class final Landroid/app/ActivityManager$StackBoxInfo$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$StackBoxInfo;
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
        "Landroid/app/ActivityManager$StackBoxInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$StackBoxInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 1358
    new-instance v0, Landroid/app/ActivityManager$StackBoxInfo;

    invoke-direct {v0, p1}, Landroid/app/ActivityManager$StackBoxInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1354
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$StackBoxInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ActivityManager$StackBoxInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 1363
    new-array v0, p1, [Landroid/app/ActivityManager$StackBoxInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1354
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$StackBoxInfo$1;->newArray(I)[Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v0

    return-object v0
.end method
