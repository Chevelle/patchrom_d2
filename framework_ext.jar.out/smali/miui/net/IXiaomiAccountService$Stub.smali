.class public abstract Lmiui/net/IXiaomiAccountService$Stub;
.super Landroid/os/Binder;
.source "IXiaomiAccountService.java"

# interfaces
.implements Lmiui/net/IXiaomiAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/IXiaomiAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/IXiaomiAccountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.net.IXiaomiAccountService"

.field static final TRANSACTION_getAvatarFd:I = 0x3

.field static final TRANSACTION_getNickName:I = 0x2

.field static final TRANSACTION_getUserName:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "miui.net.IXiaomiAccountService"

    invoke-virtual {p0, p0, v0}, Lmiui/net/IXiaomiAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/net/IXiaomiAccountService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "miui.net.IXiaomiAccountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/net/IXiaomiAccountService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lmiui/net/IXiaomiAccountService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lmiui/net/IXiaomiAccountService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/net/IXiaomiAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "miui.net.IXiaomiAccountService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "miui.net.IXiaomiAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 55
    .local v0, _arg0:Landroid/accounts/Account;
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/net/IXiaomiAccountService$Stub;->getUserName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Landroid/accounts/Account;
    .end local v1           #_result:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/accounts/Account;
    goto :goto_1

    .line 62
    .end local v0           #_arg0:Landroid/accounts/Account;
    :sswitch_2
    const-string v3, "miui.net.IXiaomiAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 70
    .restart local v0       #_arg0:Landroid/accounts/Account;
    :goto_2
    invoke-virtual {p0, v0}, Lmiui/net/IXiaomiAccountService$Stub;->getNickName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v0           #_arg0:Landroid/accounts/Account;
    .end local v1           #_result:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/accounts/Account;
    goto :goto_2

    .line 77
    .end local v0           #_arg0:Landroid/accounts/Account;
    :sswitch_3
    const-string v3, "miui.net.IXiaomiAccountService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 85
    .restart local v0       #_arg0:Landroid/accounts/Account;
    :goto_3
    invoke-virtual {p0, v0}, Lmiui/net/IXiaomiAccountService$Stub;->getAvatarFd(Landroid/accounts/Account;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 86
    .local v1, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:Landroid/accounts/Account;
    .end local v1           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/accounts/Account;
    goto :goto_3

    .line 92
    .restart local v1       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method