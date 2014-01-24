.class public Landroid/content/IContentProviderProxy;
.super Ljava/lang/Object;
.source "IContentProviderProxy.java"


# instance fields
.field private mProvider:Landroid/content/IContentProvider;


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/content/IContentProviderProxy;->mProvider:Landroid/content/IContentProvider;

    .line 15
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "callingPackage"
    .parameter "method"
    .parameter "arg"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Landroid/content/IContentProviderProxy;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v0, p2, p3, p4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
