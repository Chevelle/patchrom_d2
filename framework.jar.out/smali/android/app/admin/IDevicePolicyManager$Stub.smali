.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_getActiveAdmins:I = 0x2a

.field static final TRANSACTION_getCameraDisabled:I = 0x25

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x17

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x20

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x27

.field static final TRANSACTION_getMMACenforcing:I = 0x39

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1c

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getRemoveWarning:I = 0x2c

.field static final TRANSACTION_getSELinuxBooleanNames:I = 0x33

.field static final TRANSACTION_getSELinuxBooleanValue:I = 0x34

.field static final TRANSACTION_getSELinuxEnforcing:I = 0x32

.field static final TRANSACTION_getStorageEncryption:I = 0x22

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x23

.field static final TRANSACTION_hasGrantedPolicy:I = 0x2e

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x29

.field static final TRANSACTION_isCustomPolicyFile:I = 0x3b

.field static final TRANSACTION_isMMACadmin:I = 0x36

.field static final TRANSACTION_isSELinuxAdmin:I = 0x30

.field static final TRANSACTION_lockNow:I = 0x1d

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x2b

.field static final TRANSACTION_removeActiveAdmin:I = 0x2d

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x3d

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x3e

.field static final TRANSACTION_resetPassword:I = 0x1a

.field static final TRANSACTION_setActiveAdmin:I = 0x28

.field static final TRANSACTION_setActivePasswordState:I = 0x3c

.field static final TRANSACTION_setCameraDisabled:I = 0x24

.field static final TRANSACTION_setCustomPolicyFile:I = 0x3a

.field static final TRANSACTION_setGlobalProxy:I = 0x1f

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x26

.field static final TRANSACTION_setMMACadmin:I = 0x37

.field static final TRANSACTION_setMMACenforcing:I = 0x38

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x18

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1b

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setSELinuxAdmin:I = 0x2f

.field static final TRANSACTION_setSELinuxBooleanValue:I = 0x35

.field static final TRANSACTION_setSELinuxEnforcing:I = 0x31

.field static final TRANSACTION_setStorageEncryption:I = 0x21

.field static final TRANSACTION_wipeData:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 1097
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :sswitch_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 60
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 62
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 63
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;II)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v2, 0x1

    goto :goto_0

    .line 57
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .line 69
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_2
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 78
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v14

    .line 80
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 75
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_2

    .line 86
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 95
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 97
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 98
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;II)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 92
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .line 104
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 113
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v14

    .line 115
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 110
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .line 121
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_5
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 130
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 132
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 133
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 127
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_5

    .line 139
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_6
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 142
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 148
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 149
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v14

    .line 150
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 145
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_6

    .line 156
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_7
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 165
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 167
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 168
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 162
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .line 174
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 177
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 183
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 184
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v14

    .line 185
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 180
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_7
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_8

    .line 191
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_9
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 194
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 200
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 202
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 203
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;II)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 197
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_8
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_9

    .line 209
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_a
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 212
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 218
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 219
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v14

    .line 220
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 215
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_9
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_a

    .line 226
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_b
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 229
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 235
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 237
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 238
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 232
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .line 244
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_c
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 247
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 253
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 254
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v14

    .line 255
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 250
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_b
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_c

    .line 261
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_d
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 264
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 270
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 272
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 273
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 267
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_c
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_d

    .line 279
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_e
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 282
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 288
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 289
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v14

    .line 290
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 285
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .line 296
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_f
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 299
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 305
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 307
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 308
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 302
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_e
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    .line 314
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_10
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 317
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 323
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 324
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v14

    .line 325
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 320
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_10

    .line 331
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_11
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 334
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 340
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 342
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 343
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;II)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 337
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_10
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .line 349
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_12
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 352
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 358
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 359
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v14

    .line 360
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 355
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_11
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_12

    .line 366
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_13
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    .line 369
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 375
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 377
    .local v12, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 378
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 372
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg2:I
    .end local v12           #_arg1:J
    :cond_12
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_13

    .line 384
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_14
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    .line 387
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 393
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 394
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v14

    .line 395
    .local v14, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 397
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 390
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:J
    :cond_13
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_14

    .line 401
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_15
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 404
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 410
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 411
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;I)J

    move-result-wide v14

    .line 412
    .restart local v14       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 414
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 407
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:J
    :cond_14
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_15

    .line 418
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_16
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 421
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(I)Z

    move-result v14

    .line 422
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v14, :cond_15

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 423
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 428
    .end local v3           #_arg0:I
    .end local v14           #_result:Z
    :sswitch_17
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 431
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(I)I

    move-result v14

    .line 432
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 438
    .end local v3           #_arg0:I
    .end local v14           #_result:I
    :sswitch_18
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 441
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 447
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 449
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 450
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 444
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_16
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_17

    .line 456
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_19
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 459
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 465
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 466
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v14

    .line 467
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 462
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_17
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_18

    .line 473
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_1a
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 479
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 480
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;II)Z

    move-result v14

    .line 481
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    if-eqz v14, :cond_18

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 482
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .line 487
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_1b
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 490
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 496
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 498
    .restart local v12       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 499
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JI)V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 493
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg2:I
    .end local v12           #_arg1:J
    :cond_19
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_1a

    .line 505
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_1c
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 508
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 514
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 515
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v14

    .line 516
    .local v14, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 518
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 511
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:J
    :cond_1a
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_1b

    .line 522
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_1d
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 529
    :sswitch_1e
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 533
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 534
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(II)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 540
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    :sswitch_1f
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 543
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 549
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 554
    .local v6, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v14

    .line 555
    .local v14, _result:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    if-eqz v14, :cond_1c

    .line 557
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 563
    :goto_1d
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 546
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:I
    .end local v14           #_result:Landroid/content/ComponentName;
    :cond_1b
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_1c

    .line 561
    .restart local v4       #_arg1:Ljava/lang/String;
    .restart local v5       #_arg2:Ljava/lang/String;
    .restart local v6       #_arg3:I
    .restart local v14       #_result:Landroid/content/ComponentName;
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 567
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:I
    .end local v14           #_result:Landroid/content/ComponentName;
    :sswitch_20
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 570
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v14

    .line 571
    .restart local v14       #_result:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    if-eqz v14, :cond_1d

    .line 573
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 579
    :goto_1e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 577
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 583
    .end local v3           #_arg0:I
    .end local v14           #_result:Landroid/content/ComponentName;
    :sswitch_21
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 586
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 592
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v4, 0x1

    .line 594
    .local v4, _arg1:Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 595
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;ZI)I

    move-result v14

    .line 596
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 589
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v14           #_result:I
    :cond_1e
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_1f

    .line 592
    :cond_1f
    const/4 v4, 0x0

    goto :goto_20

    .line 602
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_22
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    .line 605
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 611
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 612
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v14

    .line 613
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    if-eqz v14, :cond_21

    const/4 v2, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 608
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :cond_20
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_21

    .line 614
    .restart local v4       #_arg1:I
    .restart local v14       #_result:Z
    :cond_21
    const/4 v2, 0x0

    goto :goto_22

    .line 619
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_23
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 622
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(I)I

    move-result v14

    .line 623
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 629
    .end local v3           #_arg0:I
    .end local v14           #_result:I
    :sswitch_24
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    .line 632
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 638
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    const/4 v4, 0x1

    .line 640
    .local v4, _arg1:Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 641
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;ZI)V

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 635
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    :cond_22
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_23

    .line 638
    :cond_23
    const/4 v4, 0x0

    goto :goto_24

    .line 647
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_25
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    .line 650
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 656
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 657
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v14

    .line 658
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v14, :cond_25

    const/4 v2, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 653
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :cond_24
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_25

    .line 659
    .restart local v4       #_arg1:I
    .restart local v14       #_result:Z
    :cond_25
    const/4 v2, 0x0

    goto :goto_26

    .line 664
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_26
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    .line 667
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 673
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 675
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 676
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 670
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_26
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_27

    .line 682
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_27
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    .line 685
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 691
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 692
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v14

    .line 693
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 688
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:I
    :cond_27
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_28

    .line 699
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_28
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    .line 702
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 708
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_29

    const/4 v4, 0x1

    .line 710
    .local v4, _arg1:Z
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 711
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 705
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    :cond_28
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_29

    .line 708
    :cond_29
    const/4 v4, 0x0

    goto :goto_2a

    .line 717
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_29
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 720
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 726
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 727
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v14

    .line 728
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    if-eqz v14, :cond_2b

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 723
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :cond_2a
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_2b

    .line 729
    .restart local v4       #_arg1:I
    .restart local v14       #_result:Z
    :cond_2b
    const/4 v2, 0x0

    goto :goto_2c

    .line 734
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_2a
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 737
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v16

    .line 738
    .local v16, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 740
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 744
    .end local v3           #_arg0:I
    .end local v16           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_2b
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 748
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 749
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v14

    .line 750
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    if-eqz v14, :cond_2c

    const/4 v2, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 751
    :cond_2c
    const/4 v2, 0x0

    goto :goto_2d

    .line 756
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_2c
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 759
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 765
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    .line 766
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 772
    .local v4, _arg1:Landroid/os/RemoteCallback;
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 773
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 762
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Landroid/os/RemoteCallback;
    .end local v5           #_arg2:I
    :cond_2d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_2e

    .line 769
    :cond_2e
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_2f

    .line 779
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_2d
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    .line 782
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 788
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 789
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 785
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    :cond_2f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_30

    .line 795
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_2e
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    .line 798
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 804
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 806
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 807
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v14

    .line 808
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    if-eqz v14, :cond_31

    const/4 v2, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 801
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :cond_30
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_31

    .line 809
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:I
    .restart local v14       #_result:Z
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 814
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_2f
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 817
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 823
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_33

    const/4 v4, 0x1

    .line 825
    .local v4, _arg1:Z
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 826
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSELinuxAdmin(Landroid/content/ComponentName;ZI)Z

    move-result v14

    .line 827
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    if-eqz v14, :cond_34

    const/4 v2, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 820
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :cond_32
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_33

    .line 823
    :cond_33
    const/4 v4, 0x0

    goto :goto_34

    .line 828
    .restart local v4       #_arg1:Z
    .restart local v5       #_arg2:I
    .restart local v14       #_result:Z
    :cond_34
    const/4 v2, 0x0

    goto :goto_35

    .line 833
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_30
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_35

    .line 836
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 842
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 843
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSELinuxAdmin(Landroid/content/ComponentName;I)Z

    move-result v14

    .line 844
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    if-eqz v14, :cond_36

    const/4 v2, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 839
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :cond_35
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_36

    .line 845
    .restart local v4       #_arg1:I
    .restart local v14       #_result:Z
    :cond_36
    const/4 v2, 0x0

    goto :goto_37

    .line 850
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_31
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_37

    .line 853
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 859
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    const/4 v4, 0x1

    .line 861
    .local v4, _arg1:Z
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 862
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSELinuxEnforcing(Landroid/content/ComponentName;ZI)Z

    move-result v14

    .line 863
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    if-eqz v14, :cond_39

    const/4 v2, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 856
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :cond_37
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_38

    .line 859
    :cond_38
    const/4 v4, 0x0

    goto :goto_39

    .line 864
    .restart local v4       #_arg1:Z
    .restart local v5       #_arg2:I
    .restart local v14       #_result:Z
    :cond_39
    const/4 v2, 0x0

    goto :goto_3a

    .line 869
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_32
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 872
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 878
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 879
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSELinuxEnforcing(Landroid/content/ComponentName;I)Z

    move-result v14

    .line 880
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    if-eqz v14, :cond_3b

    const/4 v2, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 875
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :cond_3a
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_3b

    .line 881
    .restart local v4       #_arg1:I
    .restart local v14       #_result:Z
    :cond_3b
    const/4 v2, 0x0

    goto :goto_3c

    .line 886
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_33
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c

    .line 889
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 895
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 896
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSELinuxBooleanNames(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v17

    .line 897
    .local v17, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 899
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 892
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3c
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_3d

    .line 903
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_34
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3d

    .line 906
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 912
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 914
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 915
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSELinuxBooleanValue(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v14

    .line 916
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    if-eqz v14, :cond_3e

    const/4 v2, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 909
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :cond_3d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_3e

    .line 917
    .restart local v4       #_arg1:Ljava/lang/String;
    .restart local v5       #_arg2:I
    .restart local v14       #_result:Z
    :cond_3e
    const/4 v2, 0x0

    goto :goto_3f

    .line 922
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_35
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    .line 925
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 931
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 933
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    const/4 v5, 0x1

    .line 935
    .local v5, _arg2:Z
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 936
    .restart local v6       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSELinuxBooleanValue(Landroid/content/ComponentName;Ljava/lang/String;ZI)Z

    move-result v14

    .line 937
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    if-eqz v14, :cond_41

    const/4 v2, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 928
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Z
    .end local v6           #_arg3:I
    .end local v14           #_result:Z
    :cond_3f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_40

    .line 933
    .restart local v4       #_arg1:Ljava/lang/String;
    :cond_40
    const/4 v5, 0x0

    goto :goto_41

    .line 938
    .restart local v5       #_arg2:Z
    .restart local v6       #_arg3:I
    .restart local v14       #_result:Z
    :cond_41
    const/4 v2, 0x0

    goto :goto_42

    .line 943
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Z
    .end local v6           #_arg3:I
    .end local v14           #_result:Z
    :sswitch_36
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    .line 946
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 952
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 953
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMMACadmin(Landroid/content/ComponentName;I)Z

    move-result v14

    .line 954
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    if-eqz v14, :cond_43

    const/4 v2, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 949
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :cond_42
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_43

    .line 955
    .restart local v4       #_arg1:I
    .restart local v14       #_result:Z
    :cond_43
    const/4 v2, 0x0

    goto :goto_44

    .line 960
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_37
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_44

    .line 963
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 969
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    const/4 v4, 0x1

    .line 971
    .local v4, _arg1:Z
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 972
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMMACadmin(Landroid/content/ComponentName;ZI)Z

    move-result v14

    .line 973
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    if-eqz v14, :cond_46

    const/4 v2, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 966
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :cond_44
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_45

    .line 969
    :cond_45
    const/4 v4, 0x0

    goto :goto_46

    .line 974
    .restart local v4       #_arg1:Z
    .restart local v5       #_arg2:I
    .restart local v14       #_result:Z
    :cond_46
    const/4 v2, 0x0

    goto :goto_47

    .line 979
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_38
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    .line 982
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 988
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    const/4 v4, 0x1

    .line 990
    .restart local v4       #_arg1:Z
    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 991
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMMACenforcing(Landroid/content/ComponentName;ZI)Z

    move-result v14

    .line 992
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    if-eqz v14, :cond_49

    const/4 v2, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 985
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :cond_47
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_48

    .line 988
    :cond_48
    const/4 v4, 0x0

    goto :goto_49

    .line 993
    .restart local v4       #_arg1:Z
    .restart local v5       #_arg2:I
    .restart local v14       #_result:Z
    :cond_49
    const/4 v2, 0x0

    goto :goto_4a

    .line 998
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:Z
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_39
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a

    .line 1001
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1007
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1008
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMMACenforcing(Landroid/content/ComponentName;I)Z

    move-result v14

    .line 1009
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    if-eqz v14, :cond_4b

    const/4 v2, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1004
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :cond_4a
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_4b

    .line 1010
    .restart local v4       #_arg1:I
    .restart local v14       #_result:Z
    :cond_4b
    const/4 v2, 0x0

    goto :goto_4c

    .line 1015
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_3a
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4c

    .line 1018
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1024
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1026
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1028
    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1029
    .restart local v6       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCustomPolicyFile(Landroid/content/ComponentName;I[BI)Z

    move-result v14

    .line 1030
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    if-eqz v14, :cond_4d

    const/4 v2, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1021
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v14           #_result:Z
    :cond_4c
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_4d

    .line 1031
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:[B
    .restart local v6       #_arg3:I
    .restart local v14       #_result:Z
    :cond_4d
    const/4 v2, 0x0

    goto :goto_4e

    .line 1036
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v14           #_result:Z
    :sswitch_3b
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 1039
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1045
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1047
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1048
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCustomPolicyFile(Landroid/content/ComponentName;II)Z

    move-result v14

    .line 1049
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    if-eqz v14, :cond_4f

    const/4 v2, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1042
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :cond_4e
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_4f

    .line 1050
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:I
    .restart local v14       #_result:Z
    :cond_4f
    const/4 v2, 0x0

    goto :goto_50

    .line 1055
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v14           #_result:Z
    :sswitch_3c
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1059
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1061
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1063
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1065
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1067
    .local v7, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1069
    .local v8, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1071
    .local v9, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1073
    .local v10, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg8:I
    move-object/from16 v2, p0

    .line 1074
    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIII)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1080
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v11           #_arg8:I
    :sswitch_3d
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1083
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 1084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1089
    .end local v3           #_arg0:I
    :sswitch_3e
    const-string v2, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1092
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 1093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 42
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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
