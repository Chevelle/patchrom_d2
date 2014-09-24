.class Lcom/android/server/ConnectivityService$CheckMp$CheckMpHostnameVerifier;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$CheckMp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckMpHostnameVerifier"
.end annotation


# instance fields
.field mOrgUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .parameter "orgUri"

    .prologue
    .line 4391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4392
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CheckMp$CheckMpHostnameVerifier;->mOrgUri:Landroid/net/Uri;

    .line 4393
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 5
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 4397
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 4398
    .local v0, hv:Ljavax/net/ssl/HostnameVerifier;
    iget-object v3, p0, Lcom/android/server/ConnectivityService$CheckMp$CheckMpHostnameVerifier;->mOrgUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 4399
    .local v1, orgUriHost:Ljava/lang/String;
    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 4401
    .local v2, retVal:Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMobileOk: hostnameVerify retVal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hostname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " orgUriHost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService$CheckMp;->access$4700(Ljava/lang/String;)V

    .line 4404
    return v2

    .line 4399
    .end local v2           #retVal:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
