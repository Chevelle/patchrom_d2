.class public interface abstract Lmiui/net/IXiaomiAccountService;
.super Ljava/lang/Object;
.source "IXiaomiAccountService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/IXiaomiAccountService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAvatarFd(Landroid/accounts/Account;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNickName(Landroid/accounts/Account;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUserName(Landroid/accounts/Account;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
