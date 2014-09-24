.class public abstract Lcom/android/internal/backup/IObbBackupService$Stub;
.super Landroid/os/Binder;
.source "IObbBackupService.java"

# interfaces
.implements Lcom/android/internal/backup/IObbBackupService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IObbBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IObbBackupService"

.field static final TRANSACTION_backupObbs:I = 0x1

.field static final TRANSACTION_restoreObbFile:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.android.internal.backup.IObbBackupService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IObbBackupService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v1, "com.android.internal.backup.IObbBackupService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/backup/IObbBackupService;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/android/internal/backup/IObbBackupService;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 104
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 52
    :sswitch_0
    const-string v1, "com.android.internal.backup.IObbBackupService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    :sswitch_1
    const-string v1, "com.android.internal.backup.IObbBackupService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 68
    .local v3, _arg1:Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 70
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v6

    .line 71
    .local v6, _arg3:Landroid/app/backup/IBackupManager;
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/internal/backup/IObbBackupService$Stub;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 72
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    .end local v3           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v4           #_arg2:I
    .end local v6           #_arg3:Landroid/app/backup/IBackupManager;
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 76
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string v1, "com.android.internal.backup.IObbBackupService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 87
    .restart local v3       #_arg1:Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 89
    .local v4, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 91
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 95
    .local v8, _arg5:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 97
    .local v10, _arg6:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 99
    .local v12, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v13

    .local v13, _arg8:Landroid/app/backup/IBackupManager;
    move-object v1, p0

    .line 100
    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/backup/IObbBackupService$Stub;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    .line 101
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    .end local v3           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v4           #_arg2:J
    .end local v6           #_arg3:I
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v8           #_arg5:J
    .end local v10           #_arg6:J
    .end local v12           #_arg7:I
    .end local v13           #_arg8:Landroid/app/backup/IBackupManager;
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 48
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
