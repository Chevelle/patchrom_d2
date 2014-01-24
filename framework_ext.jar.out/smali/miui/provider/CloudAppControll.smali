.class public Lmiui/provider/CloudAppControll;
.super Ljava/lang/Object;
.source "CloudAppControll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/CloudAppControll$TAG;
    }
.end annotation


# static fields
.field public static final ACTION_APP_CONTROL_LIST_UPDATED:Ljava/lang/String; = "miui.provider.action.APP_CONTROL_LIST_UPDATED"

.field private static final AUTHORITY:Ljava/lang/String; = "com.android.providers.settings.cloud.CloudSettings"

.field private static final CLOUD_APP_CONTROL_URI:Landroid/net/Uri; = null

.field private static final CLOUD_INSTALL_COMPATIBILITY_URI:Landroid/net/Uri; = null

.field private static final CLOUD_RUNNING_COMPATIBILITY_URI:Landroid/net/Uri; = null

.field private static final COLUMN_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field private static final COLUMN_MAX_VERSION_CODE:Ljava/lang/String; = "max_version_code"

.field private static final COLUMN_MIN_VERSION_CODE:Ljava/lang/String; = "min_version_code"

.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final COLUMN_RELEASE_KEY:Ljava/lang/String; = "release_key"

.field private static final DEFAULT_PROJECTION:[Ljava/lang/String; = null

.field public static final ERROR:I = -0x1

.field public static final FLAG_INSTALL_COMPATIBILITY:I = 0x1

.field public static final FLAG_RUNNING_COMPATIBILITY:I = 0x2

.field public static final INSTALL_COMPATIBILITY_AUTHORITY:Ljava/lang/String; = "com.android.providers.settings.cloud.compatibility.install"

.field public static final MESSAGE:Ljava/lang/String; = "c_message"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "c_package_name"

.field public static final PRECISE:Ljava/lang/String; = "c_precise"

.field public static final PRECISE_FALSE:I = -0x1

.field public static final PRECISE_TRUE:I = 0x1

.field public static final RUNNING_COMPATIBILITY_AUTHORITY:Ljava/lang/String; = "com.android.providers.settings.cloud.compatibility.running"

.field public static final TICKER:Ljava/lang/String; = "c_ticker"

.field public static final TITLE:Ljava/lang/String; = "c_title"

.field public static final VERSIONS:Ljava/lang/String; = "c_versions"

.field public static final VERSION_SEPARATOR:Ljava/lang/String; = "-"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 278
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "attributes"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/CloudAppControll;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 288
    const-string v0, "content://com.android.providers.settings.cloud.CloudSettings/cloud_app_control_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/CloudAppControll;->CLOUD_APP_CONTROL_URI:Landroid/net/Uri;

    .line 292
    const-string v0, "content://com.android.providers.settings.cloud.compatibility.install/install"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/CloudAppControll;->CLOUD_INSTALL_COMPATIBILITY_URI:Landroid/net/Uri;

    .line 294
    const-string v0, "content://com.android.providers.settings.cloud.compatibility.running/running"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/CloudAppControll;->CLOUD_RUNNING_COMPATIBILITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "tag"
    .parameter "packageName"

    .prologue
    .line 139
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "tag"
    .parameter "packageName"
    .parameter "releaseKey"

    .prologue
    .line 151
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .parameter "context"
    .parameter "tag"
    .parameter "packageName"
    .parameter "releaseKey"
    .parameter "versionCode"

    .prologue
    .line 164
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    :cond_0
    const/4 v6, -0x1

    .line 208
    :cond_1
    :goto_0
    return v6

    .line 168
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v10, selectionArgsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "package_name=?"

    .line 170
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND release_key=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v10, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_3
    if-ltz p4, :cond_4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND max_version_code >=? AND min_version_code <= ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 183
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 185
    const/4 v6, -0x1

    .line 186
    .local v6, attribute:I
    const/4 v9, 0x0

    .line 188
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/CloudAppControll;->CLOUD_APP_CONTROL_URI:Landroid/net/Uri;

    sget-object v2, Lmiui/provider/CloudAppControll;->DEFAULT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 190
    if-eqz v9, :cond_5

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    const-string v0, "attributes"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 195
    .local v7, attributes:J
    invoke-virtual {p1, v7, v8}, Lmiui/provider/CloudAppControll$TAG;->getAttribute(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 204
    .end local v7           #attributes:J
    :cond_5
    :goto_1
    if-eqz v9, :cond_1

    .line 205
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 198
    :cond_6
    :try_start_1
    #getter for: Lmiui/provider/CloudAppControll$TAG;->mDefaultValue:I
    invoke-static {p1}, Lmiui/provider/CloudAppControll$TAG;->access$000(Lmiui/provider/CloudAppControll$TAG;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_7

    .line 205
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_7
    throw v0

    .line 201
    :catch_0
    move-exception v0

    .line 204
    if-eqz v9, :cond_1

    goto :goto_2
.end method

.method public static getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 17
    .parameter "context"
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "flag"

    .prologue
    .line 213
    if-nez p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 214
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 215
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 216
    .local v2, contentUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 217
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 218
    sget-object v2, Lmiui/provider/CloudAppControll;->CLOUD_INSTALL_COMPATIBILITY_URI:Landroid/net/Uri;

    .line 222
    :cond_1
    :goto_0
    const-string v4, "c_package_name = ? "

    .line 223
    .local v4, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v5, v3

    .line 227
    .local v5, selectionArgs:[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 228
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 230
    :cond_2
    if-nez v8, :cond_4

    .line 231
    const/4 v11, 0x0

    .line 269
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #contentUri:Landroid/net/Uri;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object v11

    .line 219
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #contentUri:Landroid/net/Uri;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_3
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 220
    sget-object v2, Lmiui/provider/CloudAppControll;->CLOUD_RUNNING_COMPATIBILITY_URI:Landroid/net/Uri;

    goto :goto_0

    .line 234
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_5

    .line 235
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 236
    const/4 v8, 0x0

    .line 237
    const/4 v11, 0x0

    goto :goto_1

    .line 240
    :cond_5
    const-string v3, "c_message"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, message:Ljava/lang/String;
    if-nez v11, :cond_6

    .line 242
    const-string v11, ""

    .line 243
    :cond_6
    const-string v3, "c_precise"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 244
    .local v12, precise:I
    const-string v3, "c_versions"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 246
    .local v14, version:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 247
    const/4 v3, 0x1

    if-eq v12, v3, :cond_7

    .line 248
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, p2

    if-lt v0, v3, :cond_7

    .line 249
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 250
    const/4 v8, 0x0

    .line 251
    goto :goto_1

    .line 254
    :cond_7
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 255
    .local v15, versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v3, "-"

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, versions:[Ljava/lang/String;
    move-object/from16 v7, v16

    .local v7, arr$:[Ljava/lang/String;
    array-length v10, v7

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v10, :cond_8

    aget-object v13, v7, v9

    .line 257
    .local v13, v:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 259
    .end local v13           #v:Ljava/lang/String;
    :cond_8
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 261
    const/4 v8, 0x0

    .line 262
    goto :goto_1

    .line 265
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v15           #versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v16           #versions:[Ljava/lang/String;
    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 266
    const/4 v8, 0x0

    .line 267
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 269
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #contentUri:Landroid/net/Uri;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #message:Ljava/lang/String;
    .end local v12           #precise:I
    .end local v14           #version:Ljava/lang/String;
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_1
.end method
