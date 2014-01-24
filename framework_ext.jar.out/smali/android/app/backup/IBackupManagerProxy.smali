.class public Landroid/app/backup/IBackupManagerProxy;
.super Ljava/lang/Object;
.source "IBackupManagerProxy.java"


# instance fields
.field private mService:Landroid/app/backup/IBackupManager;


# direct methods
.method public constructor <init>(Landroid/app/backup/IBackupManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Landroid/app/backup/IBackupManagerProxy;->mService:Landroid/app/backup/IBackupManager;

    .line 19
    return-void
.end method


# virtual methods
.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "includeApks"
    .parameter "includeShared"
    .parameter "doAllApps"
    .parameter "includeSystem"
    .parameter "pkgList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Landroid/app/backup/IBackupManagerProxy;->mService:Landroid/app/backup/IBackupManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V

    .line 24
    return-void
.end method
