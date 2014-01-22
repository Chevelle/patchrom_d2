.class public Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppSendFileInfo.java"


# static fields
.field private static final D:Z = true

.field static final SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothOppSendFileInfo"

.field private static final V:Z


# instance fields
.field public final mData:Ljava/lang/String;

.field public final mFileName:Ljava/lang/String;

.field public final mInputStream:Ljava/io/FileInputStream;

.field public final mLength:J

.field public final mMimetype:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 61
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const-wide/16 v3, 0x0

    const/16 v6, 0x1ec

    move-object v2, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1
    .parameter "data"
    .parameter "type"
    .parameter "length"
    .parameter "status"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 94
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 96
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 97
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V
    .locals 1
    .parameter "fileName"
    .parameter "type"
    .parameter "length"
    .parameter "inputStream"
    .parameter "status"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 84
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 85
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 86
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 22
    .parameter "context"
    .parameter "uri"
    .parameter "type"

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    .local v1, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 104
    .local v17, scheme:Ljava/lang/String;
    const/4 v13, 0x0

    .line 106
    .local v13, fileName:Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 110
    .local v14, length:J
    const-string v2, "content"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, contentType:Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "_display_name"

    aput-object v8, v3, v2

    const/4 v2, 0x1

    const-string v8, "_size"

    aput-object v8, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 121
    .local v16, metadataCursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v16, :cond_8

    .line 123
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 124
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 125
    .end local v13           #fileName:Ljava/lang/String;
    .local v3, fileName:Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    int-to-long v5, v2

    .line 126
    .end local v14           #length:J
    .local v5, length:J
    :try_start_3
    const-string v2, "BluetoothOppSendFileInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fileName = "

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v20, " length = "

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 132
    :goto_2
    if-nez v3, :cond_0

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v4, v9

    .line 145
    .end local v9           #contentType:Ljava/lang/String;
    .end local v16           #metadataCursor:Landroid/database/Cursor;
    .local v4, contentType:Ljava/lang/String;
    :goto_3
    const/4 v7, 0x0

    .line 146
    .local v7, is:Ljava/io/FileInputStream;
    const-string v2, "content"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    :try_start_4
    const-string v2, "r"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .line 153
    .local v12, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v18

    .line 154
    .local v18, statLength:J
    cmp-long v2, v5, v18

    if-eqz v2, :cond_1

    const-wide/16 v20, 0x0

    cmp-long v2, v18, v20

    if-lez v2, :cond_1

    .line 155
    const-string v2, "BluetoothOppSendFileInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Content provider length is wrong ("

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v20, "), using stat length ("

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v20, ")"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    .line 157
    move-wide/from16 v5, v18

    .line 163
    :cond_1
    :try_start_5
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v7

    .line 175
    .end local v12           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v18           #statLength:J
    :cond_2
    :goto_4
    if-nez v7, :cond_3

    .line 177
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .end local v7           #is:Ljava/io/FileInputStream;
    check-cast v7, Ljava/io/FileInputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 184
    .restart local v7       #is:Ljava/io/FileInputStream;
    :cond_3
    const-wide/16 v20, 0x0

    cmp-long v2, v5, v20

    if-nez v2, :cond_4

    .line 186
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-result v2

    int-to-long v5, v2

    .line 194
    :cond_4
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    .end local v4           #contentType:Ljava/lang/String;
    .end local v7           #is:Ljava/io/FileInputStream;
    :goto_5
    return-object v2

    .line 117
    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #length:J
    .restart local v9       #contentType:Ljava/lang/String;
    .restart local v13       #fileName:Ljava/lang/String;
    .restart local v14       #length:J
    :catch_0
    move-exception v10

    .line 119
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    const/16 v16, 0x0

    .restart local v16       #metadataCursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 129
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    move-wide v5, v14

    .end local v14           #length:J
    .restart local v5       #length:J
    move-object v3, v13

    .end local v13           #fileName:Ljava/lang/String;
    .restart local v3       #fileName:Ljava/lang/String;
    :goto_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    .line 136
    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #length:J
    .end local v9           #contentType:Ljava/lang/String;
    .end local v16           #metadataCursor:Landroid/database/Cursor;
    .restart local v13       #fileName:Ljava/lang/String;
    .restart local v14       #length:J
    :cond_5
    const-string v2, "file"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 138
    .end local v13           #fileName:Ljava/lang/String;
    .restart local v3       #fileName:Ljava/lang/String;
    move-object/from16 v4, p2

    .line 139
    .restart local v4       #contentType:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v11, f:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 141
    .end local v14           #length:J
    .restart local v5       #length:J
    goto/16 :goto_3

    .line 143
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #contentType:Ljava/lang/String;
    .end local v5           #length:J
    .end local v11           #f:Ljava/io/File;
    .restart local v13       #fileName:Ljava/lang/String;
    .restart local v14       #length:J
    :cond_6
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-wide v5, v14

    .end local v14           #length:J
    .restart local v5       #length:J
    move-object v3, v13

    .end local v13           #fileName:Ljava/lang/String;
    .restart local v3       #fileName:Ljava/lang/String;
    goto :goto_5

    .line 164
    .restart local v4       #contentType:Ljava/lang/String;
    .restart local v7       #is:Ljava/io/FileInputStream;
    .restart local v12       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v18       #statLength:J
    :catch_1
    move-exception v10

    .line 166
    .local v10, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 167
    :catch_2
    move-exception v2

    goto :goto_4

    .line 178
    .end local v7           #is:Ljava/io/FileInputStream;
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v18           #statLength:J
    :catch_3
    move-exception v10

    .line 179
    .local v10, e:Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    goto :goto_5

    .line 188
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .restart local v7       #is:Ljava/io/FileInputStream;
    :catch_4
    move-exception v10

    .line 189
    .local v10, e:Ljava/io/IOException;
    const-string v2, "BluetoothOppSendFileInfo"

    const-string v8, "Read stream exception: "

    invoke-static {v2, v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    goto :goto_5

    .line 171
    .end local v10           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    goto :goto_4

    .line 129
    .end local v4           #contentType:Ljava/lang/String;
    .end local v5           #length:J
    .end local v7           #is:Ljava/io/FileInputStream;
    .restart local v9       #contentType:Ljava/lang/String;
    .restart local v14       #length:J
    .restart local v16       #metadataCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    move-wide v5, v14

    .end local v14           #length:J
    .restart local v5       #length:J
    goto :goto_6

    :catchall_2
    move-exception v2

    goto :goto_6

    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #length:J
    .restart local v13       #fileName:Ljava/lang/String;
    .restart local v14       #length:J
    :cond_7
    move-wide v5, v14

    .end local v14           #length:J
    .restart local v5       #length:J
    move-object v3, v13

    .end local v13           #fileName:Ljava/lang/String;
    .restart local v3       #fileName:Ljava/lang/String;
    goto/16 :goto_1

    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #length:J
    .restart local v13       #fileName:Ljava/lang/String;
    .restart local v14       #length:J
    :cond_8
    move-wide v5, v14

    .end local v14           #length:J
    .restart local v5       #length:J
    move-object v3, v13

    .end local v13           #fileName:Ljava/lang/String;
    .restart local v3       #fileName:Ljava/lang/String;
    goto/16 :goto_2
.end method
