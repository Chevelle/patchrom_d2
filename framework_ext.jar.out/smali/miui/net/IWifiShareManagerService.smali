.class public interface abstract Lmiui/net/IWifiShareManagerService;
.super Ljava/lang/Object;
.source "IWifiShareManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/IWifiShareManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract downloadWifi(Lmiui/net/IWifiShareManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract feedback(Lmiui/net/IWifiShareManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uploadWifi(Lmiui/net/IWifiShareManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
