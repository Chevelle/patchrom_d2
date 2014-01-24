.class final Lmiui/util/NotificationFilterHelper$2;
.super Ljava/lang/Object;
.source "NotificationFilterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/NotificationFilterHelper;->requestBlacklist(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lmiui/util/NotificationFilterHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0xc8

    .line 284
    :try_start_0
    iget-object v6, p0, Lmiui/util/NotificationFilterHelper$2;->val$context:Landroid/content/Context;

    const-string v7, "http://policy.app.xiaomi.com/cms/interface/v1/checkpackages.php"

    iget-object v8, p0, Lmiui/util/NotificationFilterHelper$2;->val$context:Landroid/content/Context;

    #calls: Lmiui/util/NotificationFilterHelper;->getInstalledAppsJson(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v8}, Lmiui/util/NotificationFilterHelper;->access$100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lmiui/util/Network;->doHttpPostWithResponseStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 285
    .local v3, result:Lorg/json/JSONObject;
    const-string v6, "RESPONSE_CODE"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "RESPONSE_CODE"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 286
    new-instance v1, Lorg/json/JSONObject;

    const-string v6, "RESPONSE_BODY"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, body:Lorg/json/JSONObject;
    const-string v6, "errCode"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 288
    .local v4, resultCode:I
    if-ne v4, v9, :cond_2

    .line 289
    const-string v6, "packages"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 290
    .local v0, appArray:Lorg/json/JSONArray;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v5, toggleList:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 292
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_0
    iget-object v6, p0, Lmiui/util/NotificationFilterHelper$2;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "status_bar_expanded_notification_black_list"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 299
    const/4 v6, 0x0

    invoke-static {v6}, Lmiui/util/NotificationFilterHelper;->access$202(Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 317
    .end local v0           #appArray:Lorg/json/JSONArray;
    .end local v1           #body:Lorg/json/JSONObject;
    .end local v2           #i:I
    .end local v3           #result:Lorg/json/JSONObject;
    .end local v4           #resultCode:I
    .end local v5           #toggleList:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-void

    .line 301
    .restart local v1       #body:Lorg/json/JSONObject;
    .restart local v3       #result:Lorg/json/JSONObject;
    .restart local v4       #resultCode:I
    :cond_2
    const/16 v6, 0xca

    if-ne v4, v6, :cond_3

    .line 302
    const-string v6, "NotificationFilterHelper"

    const-string v7, "blacklist is empty "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v6, p0, Lmiui/util/NotificationFilterHelper$2;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "status_bar_expanded_notification_black_list"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    const/4 v6, 0x0

    invoke-static {v6}, Lmiui/util/NotificationFilterHelper;->access$202(Ljava/util/HashSet;)Ljava/util/HashSet;

    goto :goto_1

    .line 315
    .end local v1           #body:Lorg/json/JSONObject;
    .end local v3           #result:Lorg/json/JSONObject;
    .end local v4           #resultCode:I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 309
    .restart local v1       #body:Lorg/json/JSONObject;
    .restart local v3       #result:Lorg/json/JSONObject;
    .restart local v4       #resultCode:I
    :cond_3
    const/16 v6, 0xc9

    if-ne v4, v6, :cond_1

    .line 310
    const-string v6, "NotificationFilterHelper"

    const-string v7, "request param empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    .end local v1           #body:Lorg/json/JSONObject;
    .end local v4           #resultCode:I
    :cond_4
    const-string v6, "NotificationFilterHelper"

    const-string v7, "access network anomalies"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
