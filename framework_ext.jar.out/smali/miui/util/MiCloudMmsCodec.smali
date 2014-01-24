.class public Lmiui/util/MiCloudMmsCodec;
.super Ljava/lang/Object;
.source "MiCloudMmsCodec.java"


# static fields
.field private static final J_PART_CONTENT_ID:Ljava/lang/String; = "content_id"

.field private static final J_PART_CONTENT_LOCATION:Ljava/lang/String; = "content_location"

.field private static final J_PART_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final J_PART_DATA:Ljava/lang/String; = "data"

.field private static final J_PART_TEXT:Ljava/lang/String; = "text"

.field private static final LOGV:Z = true

.field private static final MMS_PART_PROJECTION:[Ljava/lang/String; = null

.field private static final PART_COLUMN_CONTENT_ID:I = 0x2

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x3

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x1

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_TEXT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MiCloudMmsCodec"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/util/MiCloudMmsCodec;->MMS_PART_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeMmsBody(Landroid/content/Context;J[BZ)V
    .locals 7
    .parameter "context"
    .parameter "msgId"
    .parameter "zippedBody"
    .parameter "callerIsSyncAdapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, partBatchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    .line 148
    invoke-static/range {v0 .. v5}, Lmiui/util/MiCloudMmsCodec;->makeMmsPartWriteOps(Ljava/util/ArrayList;Ljava/util/ArrayList;J[BZ)V

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lmiui/util/MiCloudMmsCodec;->writeMmsPartFiles(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 151
    new-instance v6, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.MAKE_MMS_PREVIEW"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v6, i:Landroid/content/Intent;
    const-string v2, "_id"

    invoke-virtual {v6, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    return-void
.end method

.method public static encodeMmsBody(Landroid/content/ContentResolver;JZ)[B
    .locals 22
    .parameter "resolver"
    .parameter "msgId"
    .parameter "callerIsSyncAdapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "part"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "caller_is_syncadapter"

    if-eqz p3, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-virtual {v4, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 67
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lmiui/util/MiCloudMmsCodec;->MMS_PART_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 68
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 69
    const-string v2, "MiCloudMmsCodec"

    const-string v4, "encodeMmsBody: Failed to access mms info in database"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 61
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_0
    const-string v2, "0"

    goto :goto_0

    .line 73
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 74
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 75
    .local v18, pdu:Lorg/json/JSONArray;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 77
    .local v14, id:J
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, contentType:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, contentId:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, contentLocation:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 82
    .local v20, text:Ljava/lang/String;
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v16, part:Lorg/json/JSONObject;
    const-string v2, "content_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v2, "content_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    if-eqz v11, :cond_2

    .line 86
    const-string v2, "content_location"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_2
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 89
    const-string v2, "text"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v14, v15, v1}, Lmiui/util/MiCloudMmsCodec;->readMmsPart(Landroid/content/ContentResolver;JZ)[B

    move-result-object v17

    .line 92
    .local v17, partData:[B
    if-eqz v17, :cond_4

    .line 93
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, data64:Ljava/lang/String;
    const-string v2, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .end local v13           #data64:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 104
    .end local v10           #contentId:Ljava/lang/String;
    .end local v11           #contentLocation:Ljava/lang/String;
    .end local v12           #contentType:Ljava/lang/String;
    .end local v14           #id:J
    .end local v16           #part:Lorg/json/JSONObject;
    .end local v17           #partData:[B
    .end local v18           #pdu:Lorg/json/JSONArray;
    .end local v20           #text:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 98
    .restart local v18       #pdu:Lorg/json/JSONArray;
    :cond_5
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v19

    .line 99
    .local v19, pduString:Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 100
    .local v8, body:[B
    invoke-static {v8}, Lmiui/util/GZIPCodec;->encode([B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v21

    .line 104
    .local v21, zippedBody:[B
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 106
    .end local v8           #body:[B
    .end local v18           #pdu:Lorg/json/JSONArray;
    .end local v19           #pduString:Ljava/lang/String;
    .end local v21           #zippedBody:[B
    :goto_2
    return-object v21

    .line 104
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 106
    const/16 v21, 0x0

    goto :goto_2
.end method

.method public static makeMmsPartWriteOps(Ljava/util/ArrayList;Ljava/util/ArrayList;J[BZ)V
    .locals 21
    .parameter
    .parameter
    .parameter "msgId"
    .parameter "zippedBody"
    .parameter "callerIsSyncAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList",
            "<[B>;J[BZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 161
    .local p0, partBatchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    sget-object v18, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v18

    const-string v19, "part"

    invoke-virtual/range {v18 .. v19}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    const-string v20, "caller_is_syncadapter"

    if-eqz p5, :cond_2

    const-string v18, "1"

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v18

    const-string v19, "supress_making_mms_preview"

    const-string v20, "1"

    invoke-virtual/range {v18 .. v20}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    .line 170
    .local v14, partUri:Landroid/net/Uri;
    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    .line 172
    .local v12, op:Landroid/content/ContentProviderOperation;
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static/range {p4 .. p4}, Lmiui/util/GZIPCodec;->decode([B)[B

    move-result-object v3

    .line 176
    .local v3, body:[B
    new-instance v5, Ljava/lang/String;

    sget-object v18, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v18

    invoke-direct {v5, v3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 178
    .local v5, bodyString:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 179
    .local v4, bodyJson:Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_5

    .line 180
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 181
    .local v13, part:Lorg/json/JSONObject;
    const-string v18, "content_type"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, contentType:Ljava/lang/String;
    const-string v18, "application/smil"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v15, -0x1

    .line 183
    .local v15, seq:I
    :goto_2
    const-string v18, "content_id"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, contentId:Ljava/lang/String;
    const-string v18, "content_location"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, contentLocation:Ljava/lang/String;
    const-string v18, "text"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 186
    .local v16, text:Ljava/lang/String;
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 187
    .local v10, data64:Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v10, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    .line 189
    .local v9, data:[B
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v17, v:Landroid/content/ContentValues;
    const-string v18, "mid"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v18, "seq"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v18, "ct"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v18, "cid"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v18, "cl"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v18, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 197
    const-string v18, "chset"

    const/16 v19, 0x6a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    :cond_0
    const-string v18, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "application/smil"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 201
    :cond_1
    const-string v18, "text"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :goto_3
    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    .line 208
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 161
    .end local v3           #body:[B
    .end local v4           #bodyJson:Lorg/json/JSONArray;
    .end local v5           #bodyString:Ljava/lang/String;
    .end local v6           #contentId:Ljava/lang/String;
    .end local v7           #contentLocation:Ljava/lang/String;
    .end local v8           #contentType:Ljava/lang/String;
    .end local v9           #data:[B
    .end local v10           #data64:Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #op:Landroid/content/ContentProviderOperation;
    .end local v13           #part:Lorg/json/JSONObject;
    .end local v14           #partUri:Landroid/net/Uri;
    .end local v15           #seq:I
    .end local v16           #text:Ljava/lang/String;
    .end local v17           #v:Landroid/content/ContentValues;
    :cond_2
    const-string v18, "0"

    goto/16 :goto_0

    .line 182
    .restart local v3       #body:[B
    .restart local v4       #bodyJson:Lorg/json/JSONArray;
    .restart local v5       #bodyString:Ljava/lang/String;
    .restart local v8       #contentType:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v12       #op:Landroid/content/ContentProviderOperation;
    .restart local v13       #part:Lorg/json/JSONObject;
    .restart local v14       #partUri:Landroid/net/Uri;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 204
    .restart local v6       #contentId:Ljava/lang/String;
    .restart local v7       #contentLocation:Ljava/lang/String;
    .restart local v9       #data:[B
    .restart local v10       #data64:Ljava/lang/String;
    .restart local v15       #seq:I
    .restart local v16       #text:Ljava/lang/String;
    .restart local v17       #v:Landroid/content/ContentValues;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 210
    .end local v6           #contentId:Ljava/lang/String;
    .end local v7           #contentLocation:Ljava/lang/String;
    .end local v8           #contentType:Ljava/lang/String;
    .end local v9           #data:[B
    .end local v10           #data64:Ljava/lang/String;
    .end local v13           #part:Lorg/json/JSONObject;
    .end local v15           #seq:I
    .end local v16           #text:Ljava/lang/String;
    .end local v17           #v:Landroid/content/ContentValues;
    :cond_5
    return-void
.end method

.method private static readMmsPart(Landroid/content/ContentResolver;JZ)[B
    .locals 9
    .parameter "resolver"
    .parameter "partId"
    .parameter "callerIsSyncAdapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "part"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "caller_is_syncadapter"

    if-eqz p3, :cond_0

    const-string v6, "1"

    :goto_0
    invoke-virtual {v7, v8, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 118
    .local v5, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 119
    .local v1, input:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 121
    .local v3, output:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 122
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .end local v3           #output:Ljava/io/ByteArrayOutputStream;
    .local v4, output:Ljava/io/ByteArrayOutputStream;
    if-nez v1, :cond_1

    .line 124
    :try_start_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot open input stream for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 135
    .end local v4           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #output:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 136
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 138
    const/4 v6, 0x0

    :goto_2
    return-object v6

    .line 112
    .end local v1           #input:Ljava/io/InputStream;
    .end local v3           #output:Ljava/io/ByteArrayOutputStream;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_0
    const-string v6, "0"

    goto :goto_0

    .line 126
    .restart local v1       #input:Ljava/io/InputStream;
    .restart local v4       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x0

    .line 127
    .local v2, len:I
    const/16 v6, 0x1000

    :try_start_2
    new-array v0, v6, [B

    .line 128
    .local v0, buffer:[B
    :goto_3
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    .line 129
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 135
    .end local v0           #buffer:[B
    .end local v2           #len:I
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #output:Ljava/io/ByteArrayOutputStream;
    :goto_4
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 136
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 135
    throw v6

    .line 131
    .end local v3           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #len:I
    .restart local v4       #output:Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    .line 135
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 136
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v3, v4

    .line 131
    .end local v4           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 135
    .end local v0           #buffer:[B
    .end local v2           #len:I
    :catchall_1
    move-exception v6

    goto :goto_4

    .line 132
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static writeMmsPartFiles(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "resolver"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    .local p1, partBatchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const-string v5, "mms"

    invoke-virtual {p0, v5, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v4

    .line 218
    .local v4, results:[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 219
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 220
    .local v0, buffer:[B
    if-nez v0, :cond_0

    .line 218
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_0
    aget-object v5, v4, v2

    iget-object v5, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "supress_making_mms_preview"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 226
    .local v1, fileUri:Landroid/net/Uri;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 228
    .local v3, os:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 230
    const-string v5, "MiCloudMmsCodec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wrote "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v5

    .line 236
    .end local v0           #buffer:[B
    .end local v1           #fileUri:Landroid/net/Uri;
    .end local v3           #os:Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 237
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 238
    return-void
.end method
