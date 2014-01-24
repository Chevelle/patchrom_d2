.class public abstract Lmiui/net/ICloudManagerService$Stub;
.super Landroid/os/Binder;
.source "ICloudManagerService.java"

# interfaces
.implements Lmiui/net/ICloudManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/ICloudManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/ICloudManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.net.ICloudManagerService"

.field static final TRANSACTION_cancelNotification:I = 0xb

.field static final TRANSACTION_checkUser:I = 0xc

.field static final TRANSACTION_getAccessToken:I = 0xd

.field static final TRANSACTION_getActivatedPhone:I = 0x2

.field static final TRANSACTION_getActivatedSimUser:I = 0x5

.field static final TRANSACTION_getActivatedStatus:I = 0x3

.field static final TRANSACTION_getFindDeviceToken:I = 0x8

.field static final TRANSACTION_getSimAuthToken:I = 0x4

.field static final TRANSACTION_getSimInsertState:I = 0x7

.field static final TRANSACTION_getSmsGateway:I = 0x6

.field static final TRANSACTION_getUserSecurity:I = 0x9

.field static final TRANSACTION_getXmsfFeedback:I = 0xf

.field static final TRANSACTION_invalidateAccessToken:I = 0xe

.field static final TRANSACTION_invalidateUserSecurity:I = 0xa

.field static final TRANSACTION_startActivateSim:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.net.ICloudManagerService"

    invoke-virtual {p0, p0, v0}, Lmiui/net/ICloudManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerService;
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
    const-string v1, "miui.net.ICloudManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/net/ICloudManagerService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/net/ICloudManagerService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lmiui/net/ICloudManagerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/net/ICloudManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 55
    .local v1, _arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->startActivateSim(ILmiui/net/ICloudManagerResponse;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_2
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 66
    .restart local v1       #_arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->getActivatedPhone(ILmiui/net/ICloudManagerResponse;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_3
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 77
    .restart local v1       #_arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->getActivatedStatus(ILmiui/net/ICloudManagerResponse;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_4
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v2

    .line 90
    .local v2, _arg2:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/ICloudManagerService$Stub;->getSimAuthToken(ILjava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Lmiui/net/ICloudManagerResponse;
    :sswitch_5
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 101
    .local v1, _arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->getActivatedSimUser(ILmiui/net/ICloudManagerResponse;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 107
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_6
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 112
    .restart local v1       #_arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->getSmsGateway(ILmiui/net/ICloudManagerResponse;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_7
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 123
    .restart local v1       #_arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->getSimInsertState(ILmiui/net/ICloudManagerResponse;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_8
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 134
    .restart local v1       #_arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->getFindDeviceToken(ILmiui/net/ICloudManagerResponse;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_9
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v0

    .line 143
    .local v0, _arg0:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0}, Lmiui/net/ICloudManagerService$Stub;->getUserSecurity(Lmiui/net/ICloudManagerResponse;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0           #_arg0:Lmiui/net/ICloudManagerResponse;
    :sswitch_a
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v2

    .line 156
    .restart local v2       #_arg2:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/ICloudManagerService$Stub;->invalidateUserSecurity(Ljava/lang/String;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Lmiui/net/ICloudManagerResponse;
    :sswitch_b
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 167
    .local v1, _arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->cancelNotification(ILmiui/net/ICloudManagerResponse;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 173
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_c
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v3

    .line 182
    .local v3, _arg3:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/net/ICloudManagerService$Stub;->checkUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 188
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Lmiui/net/ICloudManagerResponse;
    :sswitch_d
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 193
    .local v1, _arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->getAccessToken(Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 199
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_e
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v2

    .line 206
    .local v2, _arg2:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/ICloudManagerService$Stub;->invalidateAccessToken(Ljava/lang/String;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 212
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Lmiui/net/ICloudManagerResponse;
    :sswitch_f
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v0

    .line 215
    .local v0, _arg0:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0}, Lmiui/net/ICloudManagerService$Stub;->getXmsfFeedback(Lmiui/net/ICloudManagerResponse;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
