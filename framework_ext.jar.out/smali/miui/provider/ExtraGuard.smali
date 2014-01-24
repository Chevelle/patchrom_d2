.class public final Lmiui/provider/ExtraGuard;
.super Ljava/lang/Object;
.source "ExtraGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraGuard$DefaultContainerConnection;
    }
.end annotation


# static fields
.field private static final CLOUD_BLACK:I = 0x1

.field private static final CLOUD_SCAN_KEY:Ljava/lang/String; = "cloud_scan"

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.miui.guardprovider"

.field public static final INVALID_FLAG:I = 0x64

.field private static final SMS_BLACK:I = 0x2

.field private static final SMS_WHITE:I = 0x1

.field private static final VIRUS_BLACK:I = 0x2

.field private static final VIRUS_GRAY:I = 0x3

.field private static final VIRUS_WHITE:I = 0x1

.field private static gService:Lcom/android/internal/app/IMediaContainerService;

.field private static final mDefContainerConn:Lmiui/provider/ExtraGuard$DefaultContainerConnection;

.field private static mVirusType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x1

    sput v0, Lmiui/provider/ExtraGuard;->mVirusType:I

    .line 49
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmiui/provider/ExtraGuard;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;

    .line 53
    new-instance v0, Lmiui/provider/ExtraGuard$DefaultContainerConnection;

    invoke-direct {v0}, Lmiui/provider/ExtraGuard$DefaultContainerConnection;-><init>()V

    sput-object v0, Lmiui/provider/ExtraGuard;->mDefContainerConn:Lmiui/provider/ExtraGuard$DefaultContainerConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    sput-object p0, Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;

    return-object p0
.end method

.method public static checkApk(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 21
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    const/4 v3, -0x3

    .line 340
    :goto_0
    return v3

    .line 284
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 285
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 286
    .local v17, path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 287
    .local v20, scheme:Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 289
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 290
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 292
    .local v13, index:I
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 294
    .end local v13           #index:I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 299
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 300
    const/4 v3, -0x3

    goto :goto_0

    .line 296
    :cond_3
    if-eqz v20, :cond_4

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 304
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 305
    .local v18, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 306
    .local v14, info:Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_6

    .line 307
    iget-object v9, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 308
    .local v9, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 309
    .local v16, packageName:Ljava/lang/String;
    iget v3, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3, v4}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 312
    .local v15, msg:Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 314
    const/16 v3, -0x1b

    goto :goto_0

    .line 317
    .end local v9           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    .end local v15           #msg:Ljava/lang/String;
    .end local v16           #packageName:Ljava/lang/String;
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 318
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    .end local v12           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_1
    const-string v3, "AntiVirusUri"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 323
    .local v8, antiVirusUri:Landroid/net/Uri;
    if-eqz v8, :cond_8

    .line 324
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v3, "cloud_scan"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 327
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    invoke-virtual {v2, v8, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    .line 333
    .local v19, result:I
    const/4 v3, 0x2

    move/from16 v0, v19

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    .line 334
    :cond_7
    const/16 v3, -0x1a

    goto/16 :goto_0

    .line 337
    .end local v8           #antiVirusUri:Landroid/net/Uri;
    .end local v10           #contentValues:Landroid/content/ContentValues;
    .end local v19           #result:I
    :catch_1
    move-exception v3

    .line 340
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static checkApk(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 21
    .parameter "context"
    .parameter "uri"
    .parameter "flags"

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    const/4 v3, -0x3

    .line 410
    :goto_0
    return v3

    .line 352
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 353
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 354
    .local v17, path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 355
    .local v20, scheme:Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 356
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 357
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 358
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 360
    .local v13, index:I
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 362
    .end local v13           #index:I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 367
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 368
    const/4 v3, -0x3

    goto :goto_0

    .line 364
    :cond_3
    if-eqz v20, :cond_4

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 365
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 372
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 373
    .local v18, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 374
    .local v14, info:Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_6

    .line 375
    iget-object v9, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 376
    .local v9, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 377
    .local v16, packageName:Ljava/lang/String;
    iget v3, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3, v4}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 380
    .local v15, msg:Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 382
    const/16 v3, -0x1b

    goto :goto_0

    .line 385
    .end local v9           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    .end local v15           #msg:Ljava/lang/String;
    .end local v16           #packageName:Ljava/lang/String;
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 386
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    .end local v12           #e:Ljava/lang/Exception;
    :cond_6
    move/from16 v0, p2

    or-int/lit16 v3, v0, 0x100

    move/from16 v0, p2

    if-eq v3, v0, :cond_8

    .line 391
    :try_start_1
    const-string v3, "AntiVirusUri"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 392
    .local v8, antiVirusUri:Landroid/net/Uri;
    if-eqz v8, :cond_8

    .line 393
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v3, "cloud_scan"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 396
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    invoke-virtual {v2, v8, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    .line 402
    .local v19, result:I
    const/4 v3, 0x2

    move/from16 v0, v19

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    .line 403
    :cond_7
    const/16 v3, -0x1a

    goto/16 :goto_0

    .line 406
    .end local v8           #antiVirusUri:Landroid/net/Uri;
    .end local v10           #contentValues:Landroid/content/ContentValues;
    .end local v19           #result:I
    :catch_1
    move-exception v3

    .line 410
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static checkApk(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 21
    .parameter "context"
    .parameter "uri"
    .parameter "cloud"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const/4 v3, -0x3

    .line 131
    :goto_0
    return v3

    .line 75
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 76
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 77
    .local v17, path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 78
    .local v20, scheme:Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 80
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 81
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 83
    .local v13, index:I
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 85
    .end local v13           #index:I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 90
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 91
    const/4 v3, -0x3

    goto :goto_0

    .line 87
    :cond_3
    if-eqz v20, :cond_4

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 95
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 96
    .local v18, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 97
    .local v14, info:Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_6

    .line 98
    iget-object v9, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    .local v9, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 100
    .local v16, packageName:Ljava/lang/String;
    iget v3, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3, v4}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 103
    .local v15, msg:Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 105
    const/16 v3, -0x1b

    goto :goto_0

    .line 108
    .end local v9           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    .end local v15           #msg:Ljava/lang/String;
    .end local v16           #packageName:Ljava/lang/String;
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 109
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v12           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_1
    const-string v3, "AntiVirusUri"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 114
    .local v8, antiVirusUri:Landroid/net/Uri;
    if-eqz v8, :cond_7

    .line 115
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v3, "cloud_scan"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 118
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    invoke-virtual {v2, v8, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 124
    .local v19, result:I
    sput v19, Lmiui/provider/ExtraGuard;->mVirusType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    .line 126
    const/16 v3, -0x1a

    goto/16 :goto_0

    .line 129
    .end local v8           #antiVirusUri:Landroid/net/Uri;
    .end local v10           #contentValues:Landroid/content/ContentValues;
    .end local v19           #result:I
    :catch_1
    move-exception v3

    .line 131
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static checkApkForVirusInfo(Landroid/content/Context;Landroid/net/Uri;Z)Lmiui/provider/ExtraGuardVirusInfoEntity;
    .locals 18
    .parameter "context"
    .parameter "uri"
    .parameter "cloud"

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const/16 v16, 0x0

    .line 207
    :goto_0
    return-object v16

    .line 145
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 146
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 147
    .local v14, path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 148
    .local v17, scheme:Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 150
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 151
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    const-string v3, "_data"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 153
    .local v10, index:I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 155
    .end local v10           #index:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 160
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 161
    const/16 v16, 0x0

    goto :goto_0

    .line 157
    :cond_3
    if-eqz v17, :cond_4

    const-string v3, "file"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 165
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 166
    .local v15, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v15, v14, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 167
    .local v11, info:Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_6

    .line 168
    iget-object v7, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 169
    .local v7, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v13, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 170
    .local v13, packageName:Ljava/lang/String;
    iget v3, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v3, v4}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 173
    .local v12, msg:Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 175
    const/16 v16, 0x0

    goto :goto_0

    .line 178
    .end local v7           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v11           #info:Landroid/content/pm/PackageInfo;
    .end local v12           #msg:Ljava/lang/String;
    .end local v13           #packageName:Ljava/lang/String;
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v9

    .line 179
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    .end local v9           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_1
    const-string v3, "AntiVirusScanForInfoUri"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 184
    .local v2, antiUri:Landroid/net/Uri;
    if-eqz v2, :cond_8

    .line 185
    new-instance v16, Lmiui/provider/ExtraGuardVirusInfoEntity;

    invoke-direct/range {v16 .. v16}, Lmiui/provider/ExtraGuardVirusInfoEntity;-><init>()V

    .line 186
    .local v16, result:Lmiui/provider/ExtraGuardVirusInfoEntity;
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v5, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 189
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 190
    .restart local v8       #cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_8

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 192
    const-string v3, "app_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setType(I)V

    .line 193
    const-string v3, "virus_description"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setDescription(Ljava/lang/String;)V

    .line 195
    const-string v3, "solve_advice"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setAdvice(I)V

    .line 196
    const-string v3, "virus_name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setVirusName(Ljava/lang/String;)V

    .line 198
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    const/4 v8, 0x0

    .line 201
    goto/16 :goto_0

    .line 204
    .end local v2           #antiUri:Landroid/net/Uri;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v16           #result:Lmiui/provider/ExtraGuardVirusInfoEntity;
    :catch_1
    move-exception v9

    .line 205
    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v9           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public static checkSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "address"
    .parameter "body"

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 419
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 420
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v5, "AntiSmsSpamUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 421
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 422
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 428
    .local v1, result:I
    if-ne v1, v9, :cond_0

    .line 433
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #result:I
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #result:I
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 428
    goto :goto_0

    .line 430
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #result:I
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    :cond_1
    move v3, v4

    .line 433
    goto :goto_0
.end method

.method public static checkSomeApkForVirusInfo(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/provider/ExtraGuardVirusInfoEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 219
    if-nez p1, :cond_0

    move-object v8, v11

    .line 257
    :goto_0
    return-object v8

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 226
    .local v0, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "AntiVirusScanForCloudInfoUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 227
    .local v1, antiUri:Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 228
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/provider/ExtraGuardVirusInfoEntity;>;"
    move-object v4, p1

    .line 230
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 232
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    new-instance v9, Lmiui/provider/ExtraGuardVirusInfoEntity;

    invoke-direct {v9}, Lmiui/provider/ExtraGuardVirusInfoEntity;-><init>()V

    .line 234
    .local v9, singleEntity:Lmiui/provider/ExtraGuardVirusInfoEntity;
    const-string v2, "app_type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 235
    .local v10, type:I
    const/4 v2, 0x2

    if-eq v10, v2, :cond_2

    const/4 v2, 0x3

    if-ne v10, v2, :cond_1

    .line 236
    :cond_2
    invoke-virtual {v9, v10}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setType(I)V

    .line 237
    const-string v2, "virus_description"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setDescription(Ljava/lang/String;)V

    .line 239
    const-string v2, "solve_advice"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setAdvice(I)V

    .line 241
    const-string v2, "virus_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setVirusName(Ljava/lang/String;)V

    .line 243
    const-string v2, "package_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setPackageName(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 254
    .end local v1           #antiUri:Landroid/net/Uri;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/provider/ExtraGuardVirusInfoEntity;>;"
    .end local v9           #singleEntity:Lmiui/provider/ExtraGuardVirusInfoEntity;
    .end local v10           #type:I
    :catch_0
    move-exception v7

    .line 255
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .end local v7           #e:Ljava/lang/Exception;
    :cond_3
    move-object v8, v11

    .line 257
    goto :goto_0

    .line 248
    .restart local v1       #antiUri:Landroid/net/Uri;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/provider/ExtraGuardVirusInfoEntity;>;"
    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    const/4 v6, 0x0

    .line 251
    goto :goto_0
.end method

.method public static getAllProvinces(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 441
    const/4 v7, 0x0

    .line 443
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionProvincesUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 444
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 446
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 447
    if-eqz v7, :cond_1

    .line 448
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 449
    .local v9, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, code:Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, name:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #code:Ljava/lang/String;
    .end local v9           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10           #name:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 459
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 460
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 464
    :goto_1
    return-object v9

    .line 454
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getBrands(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .parameter "context"
    .parameter "operatorId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 539
    const/4 v7, 0x0

    .line 541
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionBrandsUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 542
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 544
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 548
    if-eqz v7, :cond_1

    .line 549
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 550
    .local v9, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 552
    .local v6, code:Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 553
    .local v10, name:Ljava/lang/String;
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #code:Ljava/lang/String;
    .end local v9           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #name:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 560
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 561
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 563
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 565
    :goto_1
    return-object v9

    .line 555
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getCities(Landroid/content/Context;I)Ljava/util/Map;
    .locals 13
    .parameter "context"
    .parameter "provinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 473
    const/4 v7, 0x0

    .line 475
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionCitiesUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 476
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 478
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 482
    if-eqz v7, :cond_1

    .line 483
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 484
    .local v9, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 486
    .local v6, code:Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 487
    .local v10, name:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #code:Ljava/lang/String;
    .end local v9           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10           #name:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 494
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 495
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 499
    :goto_1
    return-object v9

    .line 489
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getOperators(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 507
    const/4 v7, 0x0

    .line 509
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionOperatorsUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 510
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 512
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 513
    if-eqz v7, :cond_1

    .line 514
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 515
    .local v9, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 516
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 517
    .local v6, code:Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 518
    .local v10, name:Ljava/lang/String;
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #code:Ljava/lang/String;
    .end local v9           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #name:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 525
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 530
    :goto_1
    return-object v9

    .line 520
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getSMSInstructons(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 620
    const/4 v7, 0x0

    .line 622
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionInstructionsUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 623
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 625
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 626
    if-eqz v7, :cond_1

    .line 627
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 628
    .local v9, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    const-string v2, "address"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 630
    .local v6, address:Ljava/lang/String;
    const-string v2, "message"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 631
    .local v10, message:Ljava/lang/String;
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #address:Ljava/lang/String;
    .end local v9           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #message:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 638
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 639
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 643
    :goto_1
    return-object v9

    .line 633
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getTrafficCorrectionResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Long;
    .locals 13
    .parameter "context"
    .parameter "senderNum"
    .parameter "returnedSms"

    .prologue
    .line 653
    const/4 v6, 0x0

    .line 655
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "TrafficCorrectionResultUri"

    invoke-static {p0, v0}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 656
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 658
    .local v10, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 663
    if-eqz v6, :cond_1

    .line 664
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 665
    const-string v0, "used"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v11, v0

    .line 666
    .local v11, used:J
    const-string v0, "left"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    .line 667
    .local v8, left:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 668
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v1           #uri:Landroid/net/Uri;
    .end local v8           #left:J
    .end local v10           #resolver:Landroid/content/ContentResolver;
    .end local v11           #used:J
    :goto_0
    return-object v0

    .line 673
    :catch_0
    move-exception v7

    .line 674
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_0

    .line 675
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "type"

    .prologue
    .line 683
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safe_guard_choosed"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, packageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 686
    const-string v3, "com.miui.guardprovider"

    .line 688
    :cond_0
    const/4 v5, 0x0

    .line 689
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 690
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "miui.intent.action.safeguard"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const/16 v6, 0x80

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 693
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 694
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, authorities:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 697
    .end local v0           #authorities:Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static getVirusType()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lmiui/provider/ExtraGuard;->mVirusType:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lmiui/provider/ExtraGuard;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, service:Landroid/content/Intent;
    sget-object v1, Lmiui/provider/ExtraGuard;->mDefContainerConn:Lmiui/provider/ExtraGuard$DefaultContainerConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    .line 68
    return-void
.end method

.method public static saveTrafficCorrectionConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "provinceId"
    .parameter "cityId"
    .parameter "operatorId"
    .parameter "brandId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 599
    :try_start_0
    const-string v5, "TrafficCorrectionConfigUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 600
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 601
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 602
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 612
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 602
    goto :goto_0

    .line 609
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 612
    goto :goto_0
.end method

.method public static stopCurrentScan(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 265
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 266
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "AntiVirusScanForStopCloudScanUri"

    invoke-static {p0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 267
    .local v0, antiUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 268
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v0           #antiUri:Landroid/net/Uri;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateSMSTemplate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "provinceId"
    .parameter "cityId"
    .parameter "operatorId"
    .parameter "brandId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 575
    :try_start_0
    const-string v5, "TrafficCorrectionUpdateUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 576
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 577
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 578
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 588
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 578
    goto :goto_0

    .line 585
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 588
    goto :goto_0
.end method
