.class public abstract Lmiui/net/IWifiShareManagerService$Stub;
.super Landroid/os/Binder;
.source "IWifiShareManagerService.java"

# interfaces
.implements Lmiui/net/IWifiShareManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/IWifiShareManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/IWifiShareManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.net.IWifiShareManagerService"

.field static final TRANSACTION_downloadWifi:I = 0x2

.field static final TRANSACTION_feedback:I = 0x3

.field static final TRANSACTION_uploadWifi:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.net.IWifiShareManagerService"

    invoke-virtual {p0, p0, v0}, Lmiui/net/IWifiShareManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/net/IWifiShareManagerService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "miui.net.IWifiShareManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/net/IWifiShareManagerService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/net/IWifiShareManagerService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lmiui/net/IWifiShareManagerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/net/IWifiShareManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v4, "miui.net.IWifiShareManagerService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "miui.net.IWifiShareManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/net/IWifiShareManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IWifiShareManagerResponse;

    move-result-object v0

    .line 54
    .local v0, _arg0:Lmiui/net/IWifiShareManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 61
    .local v1, _arg1:Landroid/accounts/Account;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 67
    .local v2, _arg2:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/IWifiShareManagerService$Stub;->uploadWifi(Lmiui/net/IWifiShareManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v1           #_arg1:Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/accounts/Account;
    goto :goto_1

    .line 65
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_2

    .line 73
    .end local v0           #_arg0:Lmiui/net/IWifiShareManagerResponse;
    .end local v1           #_arg1:Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :sswitch_2
    const-string v4, "miui.net.IWifiShareManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/net/IWifiShareManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IWifiShareManagerResponse;

    move-result-object v0

    .line 77
    .restart local v0       #_arg0:Lmiui/net/IWifiShareManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 84
    .restart local v1       #_arg1:Landroid/accounts/Account;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 90
    .restart local v2       #_arg2:Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/IWifiShareManagerService$Stub;->downloadWifi(Lmiui/net/IWifiShareManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v1           #_arg1:Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/accounts/Account;
    goto :goto_3

    .line 88
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_4

    .line 96
    .end local v0           #_arg0:Lmiui/net/IWifiShareManagerResponse;
    .end local v1           #_arg1:Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :sswitch_3
    const-string v4, "miui.net.IWifiShareManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/net/IWifiShareManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IWifiShareManagerResponse;

    move-result-object v0

    .line 100
    .restart local v0       #_arg0:Lmiui/net/IWifiShareManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 101
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 107
    .restart local v1       #_arg1:Landroid/accounts/Account;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 113
    .restart local v2       #_arg2:Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/IWifiShareManagerService$Stub;->feedback(Lmiui/net/IWifiShareManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 104
    .end local v1           #_arg1:Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/accounts/Account;
    goto :goto_5

    .line 111
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_6

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
