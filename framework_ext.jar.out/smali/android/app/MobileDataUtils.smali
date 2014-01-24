.class public Landroid/app/MobileDataUtils;
.super Ljava/lang/Object;
.source "MobileDataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/MobileDataUtils;
    .locals 3

    .prologue
    .line 15
    :try_start_0
    const-string v2, "miui.msim.util.MSimMobileDataUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 16
    .local v1, mobileDataUtilsFactory:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/MobileDataUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-object v0

    .line 20
    :catch_0
    move-exception v2

    .line 23
    :cond_0
    new-instance v0, Landroid/app/MobileDataUtils;

    invoke-direct {v0}, Landroid/app/MobileDataUtils;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public enableMobileData(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isEnable"

    .prologue
    .line 37
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 40
    return-void
.end method

.method public getMobileDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 27
    const-string v0, "mobile_data"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 45
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isMobileEnable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 33
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method public onMobileDataChange(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    return-void
.end method
