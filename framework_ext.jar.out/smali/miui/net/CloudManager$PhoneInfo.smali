.class public Lmiui/net/CloudManager$PhoneInfo;
.super Ljava/lang/Object;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfo"
.end annotation


# instance fields
.field public final mPhone:Ljava/lang/String;

.field public final mSimId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "simId"
    .parameter "phone"

    .prologue
    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    iput-object p1, p0, Lmiui/net/CloudManager$PhoneInfo;->mSimId:Ljava/lang/String;

    .line 967
    iput-object p2, p0, Lmiui/net/CloudManager$PhoneInfo;->mPhone:Ljava/lang/String;

    .line 968
    return-void
.end method

.method private toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 972
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 973
    .local v0, devSetting:Lorg/json/JSONObject;
    const-string v2, "simId"

    iget-object v3, p0, Lmiui/net/CloudManager$PhoneInfo;->mSimId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 974
    const-string v2, "phone"

    iget-object v3, p0, Lmiui/net/CloudManager$PhoneInfo;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    .end local v0           #devSetting:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 976
    :catch_0
    move-exception v1

    .line 977
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 979
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createPhoneInfoString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/net/CloudManager$PhoneInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 983
    .local p1, phoneInfos:Ljava/util/List;,"Ljava/util/List<Lmiui/net/CloudManager$PhoneInfo;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 984
    .local v0, array:Lorg/json/JSONArray;
    if-eqz p1, :cond_1

    .line 985
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/net/CloudManager$PhoneInfo;

    .line 986
    .local v3, phoneInfo:Lmiui/net/CloudManager$PhoneInfo;
    invoke-direct {v3}, Lmiui/net/CloudManager$PhoneInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 987
    .local v2, o:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 988
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 992
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #o:Lorg/json/JSONObject;
    .end local v3           #phoneInfo:Lmiui/net/CloudManager$PhoneInfo;
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
