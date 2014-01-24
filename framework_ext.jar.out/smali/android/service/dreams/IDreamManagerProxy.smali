.class public Landroid/service/dreams/IDreamManagerProxy;
.super Ljava/lang/Object;
.source "IDreamManagerProxy.java"


# instance fields
.field private mService:Landroid/service/dreams/IDreamManager;


# direct methods
.method public constructor <init>(Landroid/service/dreams/IDreamManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/service/dreams/IDreamManagerProxy;->mService:Landroid/service/dreams/IDreamManager;

    .line 15
    return-void
.end method


# virtual methods
.method public getDreamComponent()Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Landroid/service/dreams/IDreamManagerProxy;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setDreamComponent(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "cn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Landroid/service/dreams/IDreamManagerProxy;->mService:Landroid/service/dreams/IDreamManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Landroid/service/dreams/IDreamManager;->setDreamComponents([Landroid/content/ComponentName;)V

    .line 19
    return-void
.end method
