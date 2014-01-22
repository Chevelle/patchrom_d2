.class public abstract Landroid/service/pie/IPieService$Stub;
.super Landroid/os/Binder;
.source "IPieService.java"

# interfaces
.implements Landroid/service/pie/IPieService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pie/IPieService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/pie/IPieService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.pie.IPieService"

.field static final TRANSACTION_registerPieActivationListener:I = 0x1

.field static final TRANSACTION_updatePieActivationListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.service.pie.IPieService"

    invoke-virtual {p0, p0, v0}, Landroid/service/pie/IPieService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/pie/IPieService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.service.pie.IPieService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/pie/IPieService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/service/pie/IPieService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/service/pie/IPieService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/pie/IPieService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v3, "android.service.pie.IPieService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "android.service.pie.IPieService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/pie/IPieActivationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/pie/IPieActivationListener;

    move-result-object v0

    .line 51
    .local v0, _arg0:Landroid/service/pie/IPieActivationListener;
    invoke-virtual {p0, v0}, Landroid/service/pie/IPieService$Stub;->registerPieActivationListener(Landroid/service/pie/IPieActivationListener;)Landroid/service/pie/IPieHostCallback;

    move-result-object v2

    .line 52
    .local v2, _result:Landroid/service/pie/IPieHostCallback;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/service/pie/IPieHostCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    .line 54
    goto :goto_0

    .line 53
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 58
    .end local v0           #_arg0:Landroid/service/pie/IPieActivationListener;
    .end local v2           #_result:Landroid/service/pie/IPieHostCallback;
    :sswitch_2
    const-string v3, "android.service.pie.IPieService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/service/pie/IPieService$Stub;->updatePieActivationListener(Landroid/os/IBinder;I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 65
    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
