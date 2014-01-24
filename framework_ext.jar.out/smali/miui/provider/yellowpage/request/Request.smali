.class public abstract Lmiui/provider/yellowpage/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "yellowpage"

.field private static final APP_SECRET:Ljava/lang/String; = "77eb2e8a5755abd016c0d69ba74b219c"

.field private static final DECODE_KEY:Ljava/lang/String; = "d101b17c77ff93cs"

.field protected static final HTTP_REQUEST_DELAY_MS:I = 0x2710

.field protected static final MOBILE_HTTP_REQUEST_TIMEOUT_MS:I = 0x7530

.field public static final STATUS_CLIENT_ERROR:I = 0x3

.field public static final STATUS_NETWORK_UNAVAILABLE:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_ERROR:I = 0x4

.field public static final STATUS_SERVICE_UNAVAILABLE:I = 0x2

.field public static final STATUS_UNKNOWN_ERROR:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Request"

.field protected static final WIFI_HTTP_REQUEST_TIMEOUT_MS:I = 0x2710

.field private static sCookie:Ljava/lang/String;

.field private static sServiceToken:Lmiui/net/ExtendedAuthToken;

.field private static sUserId:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDecryptDownloadData:Z

.field protected mEncryptUploadData:Z

.field private mParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestMethod:Ljava/lang/String;

.field protected mRequestUrl:Ljava/lang/String;

.field protected mRequireLogin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "url"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "GET"

    iput-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mRequestMethod:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lmiui/provider/yellowpage/request/Request;->mRequestUrl:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/provider/yellowpage/request/Request;->mDecryptDownloadData:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/provider/yellowpage/request/Request;->mRequireLogin:Z

    .line 70
    return-void
.end method

.method public static decryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 229
    const-string v0, "d101b17c77ff93cs"

    invoke-static {p0, v0}, Lmiui/util/CoderUtils;->base6AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    .line 224
    const-string v1, "d101b17c77ff93cs"

    invoke-static {p0, v1}, Lmiui/util/CoderUtils;->base64AesEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, dataString:Ljava/lang/String;
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCookies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lmiui/provider/yellowpage/request/Request;->mRequireLogin:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lmiui/provider/yellowpage/request/Request;->getLoginCookies()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLoginCookies()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v3, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->hasLogin(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 89
    iget-object v3, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    const-string v4, "spbook"

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->getAuthToken(Landroid/content/Context;Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;

    move-result-object v2

    .line 91
    .local v2, token:Lmiui/net/ExtendedAuthToken;
    if-nez v2, :cond_0

    .line 92
    const-string v3, ""

    const-string v4, ""

    invoke-static {v3, v4}, Lmiui/net/ExtendedAuthToken;->build(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;

    move-result-object v2

    .line 94
    :cond_0
    iget-object v3, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 95
    .local v0, account:Landroid/accounts/Account;
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v4, Lmiui/provider/yellowpage/request/Request;->sUserId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lmiui/provider/yellowpage/request/Request;->sServiceToken:Lmiui/net/ExtendedAuthToken;

    invoke-virtual {v2, v3}, Lmiui/net/ExtendedAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 96
    :cond_1
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    sput-object v3, Lmiui/provider/yellowpage/request/Request;->sUserId:Ljava/lang/String;

    .line 97
    iget-object v3, v2, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 98
    sput-object v2, Lmiui/provider/yellowpage/request/Request;->sServiceToken:Lmiui/net/ExtendedAuthToken;

    .line 102
    :goto_0
    sput-object v5, Lmiui/provider/yellowpage/request/Request;->sCookie:Ljava/lang/String;

    .line 111
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #token:Lmiui/net/ExtendedAuthToken;
    :cond_2
    :goto_1
    sget-object v3, Lmiui/provider/yellowpage/request/Request;->sCookie:Ljava/lang/String;

    if-nez v3, :cond_3

    sget-object v3, Lmiui/provider/yellowpage/request/Request;->sUserId:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lmiui/provider/yellowpage/request/Request;->sServiceToken:Lmiui/net/ExtendedAuthToken;

    if-eqz v3, :cond_3

    sget-object v3, Lmiui/provider/yellowpage/request/Request;->sServiceToken:Lmiui/net/ExtendedAuthToken;

    iget-object v3, v3, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, "serviceToken="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    sget-object v3, Lmiui/provider/yellowpage/request/Request;->sServiceToken:Lmiui/net/ExtendedAuthToken;

    iget-object v3, v3, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v3, "; userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    sget-object v3, Lmiui/provider/yellowpage/request/Request;->sUserId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmiui/provider/yellowpage/request/Request;->sCookie:Ljava/lang/String;

    .line 120
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_3
    sget-object v3, Lmiui/provider/yellowpage/request/Request;->sCookie:Ljava/lang/String;

    return-object v3

    .line 100
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v2       #token:Lmiui/net/ExtendedAuthToken;
    :cond_4
    sput-object v5, Lmiui/provider/yellowpage/request/Request;->sServiceToken:Lmiui/net/ExtendedAuthToken;

    goto :goto_0

    .line 105
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #token:Lmiui/net/ExtendedAuthToken;
    :cond_5
    sput-object v5, Lmiui/provider/yellowpage/request/Request;->sServiceToken:Lmiui/net/ExtendedAuthToken;

    .line 106
    sput-object v5, Lmiui/provider/yellowpage/request/Request;->sUserId:Ljava/lang/String;

    .line 107
    sput-object v5, Lmiui/provider/yellowpage/request/Request;->sCookie:Ljava/lang/String;

    goto :goto_1
.end method

.method public static signUrlParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "hid"

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "lg"

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "uuid"

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v0, "yellowpage"

    const-string v1, "77eb2e8a5755abd016c0d69ba74b219c"

    invoke-static {p1, v0, v1}, Lmiui/util/CommonUtils;->getSignedUri(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 199
    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    .line 203
    :cond_0
    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_1
    return-void
.end method

.method public clearParams()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 212
    :cond_0
    return-void
.end method

.method protected getConn()Ljava/net/HttpURLConnection;
    .locals 8

    .prologue
    .line 131
    invoke-virtual {p0}, Lmiui/provider/yellowpage/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, url:Ljava/lang/String;
    const-string v5, "Request"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The connection url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    .line 137
    :cond_0
    const/4 v1, 0x0

    .line 139
    .local v1, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 140
    .local v3, req:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 141
    iget-object v5, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmiui/provider/yellowpage/utils/Network;->isWifiConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 146
    :goto_1
    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 147
    iget-object v5, p0, Lmiui/provider/yellowpage/request/Request;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 148
    iget-object v5, p0, Lmiui/provider/yellowpage/request/Request;->mRequestMethod:Ljava/lang/String;

    const-string v6, "POST"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 150
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 152
    :cond_1
    const-string v5, "Cookie"

    invoke-direct {p0}, Lmiui/provider/yellowpage/request/Request;->getCookies()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 153
    .end local v3           #req:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 154
    .local v2, e:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v2           #e:Ljava/net/MalformedURLException;
    .restart local v3       #req:Ljava/net/URL;
    :cond_2
    const/16 v5, 0x7530

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 155
    .end local v3           #req:Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 156
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getParams()Ljava/lang/String;
    .locals 5

    .prologue
    .line 172
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v2, paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v3, p0, Lmiui/provider/yellowpage/request/Request;->mEncryptUploadData:Z

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 175
    iget-object v3, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lmiui/provider/yellowpage/request/Request;->encryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 180
    iget-object v2, p0, Lmiui/provider/yellowpage/request/Request;->mParamsMap:Ljava/util/HashMap;

    .line 182
    :cond_1
    iget-object v3, p0, Lmiui/provider/yellowpage/request/Request;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lmiui/provider/yellowpage/request/Request;->signUrlParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 163
    iget-object v1, p0, Lmiui/provider/yellowpage/request/Request;->mRequestMethod:Ljava/lang/String;

    const-string v2, "POST"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lmiui/provider/yellowpage/request/Request;->mRequestUrl:Ljava/lang/String;

    .line 167
    :goto_0
    return-object v1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lmiui/provider/yellowpage/request/Request;->getParams()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, params:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/provider/yellowpage/request/Request;->mRequestUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "%s?%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/provider/yellowpage/request/Request;->mRequestUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected isServerError(I)Z
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 186
    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    const/16 v0, 0x193

    if-eq p1, v0, :cond_0

    const/16 v0, 0x196

    if-eq p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDecryptDownloadData(Z)Lmiui/provider/yellowpage/request/Request;
    .locals 0
    .parameter "decrypt"

    .prologue
    .line 78
    iput-boolean p1, p0, Lmiui/provider/yellowpage/request/Request;->mDecryptDownloadData:Z

    .line 79
    return-object p0
.end method

.method public setEncryptUploadData(Z)Lmiui/provider/yellowpage/request/Request;
    .locals 0
    .parameter "encrypt"

    .prologue
    .line 73
    iput-boolean p1, p0, Lmiui/provider/yellowpage/request/Request;->mEncryptUploadData:Z

    .line 74
    return-object p0
.end method

.method public setHttpMethod(Ljava/lang/String;)Lmiui/provider/yellowpage/request/Request;
    .locals 0
    .parameter "method"

    .prologue
    .line 194
    iput-object p1, p0, Lmiui/provider/yellowpage/request/Request;->mRequestMethod:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public setRequireLogin(Z)Lmiui/provider/yellowpage/request/Request;
    .locals 0
    .parameter "require"

    .prologue
    .line 83
    iput-boolean p1, p0, Lmiui/provider/yellowpage/request/Request;->mRequireLogin:Z

    .line 84
    return-object p0
.end method
