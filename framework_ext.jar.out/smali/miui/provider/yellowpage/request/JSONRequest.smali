.class public Lmiui/provider/yellowpage/request/JSONRequest;
.super Lmiui/provider/yellowpage/request/Request;
.source "JSONRequest.java"


# static fields
.field private static final DAY_TIME_IN_MILIIS:J = 0x5265c00L

.field private static final PREF_CLIENT_ERROR:Ljava/lang/String; = "pref_yellowpage_client_error"

.field private static final PREF_LAST_REQUEST_TIME:Ljava/lang/String; = "pref_last_request_yellowpage_time"

.field private static final SLEEP_TIME_SEGMENT:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "JSONRequest"


# instance fields
.field private mData:Ljava/lang/String;

.field private mPref:Landroid/content/SharedPreferences;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "url"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/request/Request;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mStatus:I

    .line 38
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mPref:Landroid/content/SharedPreferences;

    .line 39
    return-void
.end method

.method private getRequestStatus()I
    .locals 17

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Lmiui/provider/yellowpage/request/JSONRequest;->prohibitRequest()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 75
    const/4 v13, 0x3

    .line 186
    :goto_0
    return v13

    .line 78
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lmiui/provider/yellowpage/request/JSONRequest;->setClientError(Z)V

    .line 79
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lmiui/provider/yellowpage/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 80
    const-string v14, "JSONRequest"

    const-string v15, "The network is not connected"

    invoke-static {v14, v15}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v13, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v4, 0x0

    .line 85
    .local v4, conn:Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 86
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 87
    .local v6, dos:Ljava/io/DataOutputStream;
    const/4 v13, 0x3

    .line 91
    .local v13, statusCode:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lmiui/provider/yellowpage/request/JSONRequest;->getConn()Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 95
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mRequestMethod:Ljava/lang/String;

    const-string v15, "POST"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 96
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 97
    .end local v6           #dos:Ljava/io/DataOutputStream;
    .local v7, dos:Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lmiui/provider/yellowpage/request/JSONRequest;->getParams()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    move-object v6, v7

    .line 102
    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 103
    .local v10, responseCode:I
    const-string v14, "JSONRequest"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getStatus:The response code is:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/16 v14, 0xc8

    if-ne v10, v14, :cond_11

    .line 106
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 108
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v12, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 110
    .local v9, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 111
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    goto :goto_1

    .line 150
    .end local v9           #line:Ljava/lang/String;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    move-object v1, v2

    .line 151
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v10           #responseCode:I
    .restart local v1       #br:Ljava/io/BufferedReader;
    .local v8, e:Ljava/net/SocketTimeoutException;
    :goto_2
    const/4 v13, 0x2

    .line 152
    :try_start_4
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    if-eqz v1, :cond_3

    .line 166
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 172
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 173
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 176
    :cond_4
    if-eqz v6, :cond_5

    .line 178
    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 185
    :cond_5
    :goto_4
    const-string v14, "JSONRequest"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getStatus:The status code is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #responseCode:I
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_7
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v11, result:Lorg/json/JSONObject;
    const-string v14, "code"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 116
    const-string v14, "code"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 117
    .local v3, code:I
    if-nez v3, :cond_c

    .line 118
    const-string v14, "data"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mDecryptDownloadData:Z

    if-eqz v14, :cond_9

    .line 120
    invoke-static {v5}, Lmiui/provider/yellowpage/request/Request;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mData:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e

    .line 124
    :goto_5
    const/4 v13, 0x0

    .end local v3           #code:I
    .end local v5           #data:Ljava/lang/String;
    :goto_6
    move-object v1, v2

    .line 164
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #result:Lorg/json/JSONObject;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :goto_7
    if-eqz v1, :cond_7

    .line 166
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 172
    :cond_7
    :goto_8
    if-eqz v4, :cond_8

    .line 173
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 176
    :cond_8
    if-eqz v6, :cond_5

    .line 178
    :try_start_9
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 179
    :catch_1
    move-exception v8

    .line 180
    .end local v10           #responseCode:I
    .local v8, e:Ljava/io/IOException;
    :goto_9
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 122
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v8           #e:Ljava/io/IOException;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v3       #code:I
    .restart local v5       #data:Ljava/lang/String;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #responseCode:I
    .restart local v11       #result:Lorg/json/JSONObject;
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :cond_9
    :try_start_a
    move-object/from16 v0, p0

    iput-object v5, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mData:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_5

    .line 153
    .end local v3           #code:I
    .end local v5           #data:Ljava/lang/String;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #result:Lorg/json/JSONObject;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v8

    move-object v1, v2

    .line 154
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v10           #responseCode:I
    .restart local v1       #br:Ljava/io/BufferedReader;
    .local v8, e:Lorg/json/JSONException;
    :goto_a
    const/4 v13, 0x2

    .line 155
    :try_start_b
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 164
    if-eqz v1, :cond_a

    .line 166
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 172
    .end local v8           #e:Lorg/json/JSONException;
    :cond_a
    :goto_b
    if-eqz v4, :cond_b

    .line 173
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 176
    :cond_b
    if-eqz v6, :cond_5

    .line 178
    :try_start_d
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_4

    .line 179
    :catch_3
    move-exception v8

    goto :goto_9

    .line 126
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v3       #code:I
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #responseCode:I
    .restart local v11       #result:Lorg/json/JSONObject;
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :cond_c
    const/16 v14, 0x3eb

    if-eq v3, v14, :cond_d

    const/16 v14, 0x3ed

    if-eq v3, v14, :cond_d

    const/16 v14, 0x3ec

    if-ne v3, v14, :cond_e

    .line 129
    :cond_d
    const/4 v14, 0x1

    :try_start_e
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lmiui/provider/yellowpage/request/JSONRequest;->setClientError(Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    .line 130
    const/4 v13, 0x3

    goto :goto_6

    .line 131
    :cond_e
    const/16 v14, 0x7cf

    if-ne v3, v14, :cond_f

    .line 132
    const/4 v13, 0x4

    goto :goto_6

    .line 134
    :cond_f
    const/4 v13, 0x3

    goto :goto_6

    .line 138
    .end local v3           #code:I
    :cond_10
    const/4 v13, 0x4

    goto :goto_6

    .line 140
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #result:Lorg/json/JSONObject;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_11
    :try_start_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/provider/yellowpage/request/JSONRequest;->isServerError(I)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 142
    const/16 v14, 0x191

    if-ne v10, v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->hasLogin(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mContext:Landroid/content/Context;

    const-string v16, "spbook"

    invoke-static/range {v15 .. v16}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->getAuthToken(Landroid/content/Context;Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;

    move-result-object v15

    invoke-static {v14, v15}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->invalidAuthToken(Landroid/content/Context;Lmiui/net/ExtendedAuthToken;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_11
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 146
    :cond_12
    const/4 v13, 0x4

    goto :goto_7

    .line 148
    :cond_13
    const/4 v13, 0x5

    goto :goto_7

    .line 156
    .end local v10           #responseCode:I
    :catch_4
    move-exception v8

    .line 157
    .local v8, e:Ljava/io/IOException;
    :goto_c
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/provider/yellowpage/request/JSONRequest;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lmiui/provider/yellowpage/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 158
    const/4 v13, 0x1

    .line 162
    :goto_d
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 164
    if-eqz v1, :cond_14

    .line 166
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 172
    :cond_14
    :goto_e
    if-eqz v4, :cond_15

    .line 173
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 176
    :cond_15
    if-eqz v6, :cond_5

    .line 178
    :try_start_12
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_4

    .line 179
    :catch_5
    move-exception v8

    goto/16 :goto_9

    .line 160
    :cond_16
    const/4 v13, 0x2

    goto :goto_d

    .line 164
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_f
    if-eqz v1, :cond_17

    .line 166
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    .line 172
    :cond_17
    :goto_10
    if-eqz v4, :cond_18

    .line 173
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 176
    :cond_18
    if-eqz v6, :cond_19

    .line 178
    :try_start_14
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    .line 164
    :cond_19
    :goto_11
    throw v14

    .line 167
    :catch_6
    move-exception v8

    .line 168
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 179
    .end local v8           #e:Ljava/io/IOException;
    :catch_7
    move-exception v8

    .line 180
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 167
    .local v8, e:Ljava/net/SocketTimeoutException;
    :catch_8
    move-exception v8

    .line 168
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 179
    .end local v8           #e:Ljava/io/IOException;
    :catch_9
    move-exception v8

    goto/16 :goto_9

    .line 167
    .local v8, e:Lorg/json/JSONException;
    :catch_a
    move-exception v8

    .line 168
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 167
    :catch_b
    move-exception v8

    .line 168
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 167
    .end local v8           #e:Ljava/io/IOException;
    .restart local v10       #responseCode:I
    :catch_c
    move-exception v8

    .line 168
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 164
    .end local v6           #dos:Ljava/io/DataOutputStream;
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #responseCode:I
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    goto :goto_f

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v10       #responseCode:I
    :catchall_2
    move-exception v14

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_f

    .line 156
    .end local v6           #dos:Ljava/io/DataOutputStream;
    .end local v10           #responseCode:I
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    :catch_d
    move-exception v8

    move-object v6, v7

    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    goto :goto_c

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v10       #responseCode:I
    :catch_e
    move-exception v8

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_c

    .line 153
    .end local v10           #responseCode:I
    :catch_f
    move-exception v8

    goto/16 :goto_a

    .end local v6           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    :catch_10
    move-exception v8

    move-object v6, v7

    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    goto/16 :goto_a

    .line 150
    :catch_11
    move-exception v8

    goto/16 :goto_2

    .end local v6           #dos:Ljava/io/DataOutputStream;
    .restart local v7       #dos:Ljava/io/DataOutputStream;
    :catch_12
    move-exception v8

    move-object v6, v7

    .end local v7           #dos:Ljava/io/DataOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    goto/16 :goto_2
.end method

.method private prohibitRequest()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_yellowpage_client_error"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "pref_last_request_yellowpage_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setClientError(Z)V
    .locals 4
    .parameter "error"

    .prologue
    .line 58
    iget-object v0, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_yellowpage_client_error"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_last_request_yellowpage_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 3

    .prologue
    .line 42
    iget v1, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 43
    invoke-direct {p0}, Lmiui/provider/yellowpage/request/JSONRequest;->getRequestStatus()I

    move-result v1

    iput v1, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mStatus:I

    .line 44
    iget v1, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 46
    :try_start_0
    const-string v1, "JSONRequest"

    const-string v2, "server error, sleep 5000ms and retry"

    invoke-static {v1, v2}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 48
    invoke-direct {p0}, Lmiui/provider/yellowpage/request/JSONRequest;->getRequestStatus()I

    move-result v1

    iput v1, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mStatus:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    iget v1, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mStatus:I

    return v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lmiui/provider/yellowpage/request/JSONRequest;->mData:Ljava/lang/String;

    return-object v0
.end method
