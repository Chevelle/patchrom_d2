.class public abstract Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;
.super Landroid/os/Binder;
.source "IOnExtraCommandListener.java"

# interfaces
.implements Lcom/stericsson/hardware/fm/IOnExtraCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/IOnExtraCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.stericsson.hardware.fm.IOnExtraCommandListener"

.field static final TRANSACTION_onExtraCommand:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.stericsson.hardware.fm.IOnExtraCommandListener"

    invoke-virtual {p0, p0, v0}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnExtraCommandListener;
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
    const-string v1, "com.stericsson.hardware.fm.IOnExtraCommandListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "com.stericsson.hardware.fm.IOnExtraCommandListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.stericsson.hardware.fm.IOnExtraCommandListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 60
    .local v1, _arg1:Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;->onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 58
    .end local v1           #_arg1:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_1

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
