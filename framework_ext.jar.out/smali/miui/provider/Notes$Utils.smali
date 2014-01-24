.class public final Lmiui/provider/Notes$Utils;
.super Ljava/lang/Object;
.source "Notes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Utils"
.end annotation


# static fields
.field private static final IMAGE_DIMENSION_MAX:I = 0x500

.field private static final KEY_DATA_BYTES:Ljava/lang/String; = "data_bytes"

.field private static final KEY_DATA_VALUES:Ljava/lang/String; = "data_values"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "noteValues"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, dataValuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 551
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "data_values"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 552
    const-string v1, "data_bytes"

    invoke-static {v0}, Lmiui/provider/Notes$Utils;->marshall(Landroid/os/Bundle;)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 554
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static clearAccount(Landroid/content/Context;Z)Z
    .locals 9
    .parameter "context"
    .parameter "wipeData"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 485
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Lmiui/provider/Notes;->CONTENT_ACCOUNT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    if-eqz p1, :cond_1

    .line 490
    const-string v2, "_id>0"

    .line 491
    .local v2, selection:Ljava/lang/String;
    sget-object v6, Lmiui/provider/Notes;->CONTENT_NOTE_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notes"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 519
    if-eqz p1, :cond_0

    .line 520
    invoke-static {p0}, Lmiui/provider/Notes$Utils;->updateAllWidgets(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 529
    :cond_0
    :goto_1
    return v4

    .line 495
    .end local v2           #selection:Ljava/lang/String;
    :cond_1
    const-string v2, "not (parent_id>=0 OR parent_id=-2)"

    .line 496
    .restart local v2       #selection:Ljava/lang/String;
    sget-object v6, Lmiui/provider/Notes;->CONTENT_NOTE_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    const-string v2, "_id>0"

    .line 500
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 501
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "sync_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    const-string v6, "sync_tag"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v6, "local_modified"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v6, "version"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    const-string v6, "origin_parent_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    const-string v6, "account_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    sget-object v6, Lmiui/provider/Notes;->CONTENT_NOTE_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v3, Landroid/content/ContentValues;

    .end local v3           #values:Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 511
    .restart local v3       #values:Landroid/content/ContentValues;
    const-string v6, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    const-string v6, "file_id"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    sget-object v6, Lmiui/provider/Notes;->CONTENT_DATA_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 523
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "Notes"

    const-string v6, "Fail to clear account"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2
    move v4, v5

    .line 529
    goto/16 :goto_1

    .line 525
    :catch_1
    move-exception v0

    .line 526
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v4, "Notes"

    const-string v6, "Fail to clear account"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "imgPath"

    .prologue
    .line 396
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 397
    .local v11, opts:Landroid/graphics/BitmapFactory$Options;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 398
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 400
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 401
    .local v17, width:I
    iget v8, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 402
    .local v8, height:I
    if-lez v17, :cond_0

    if-gtz v8, :cond_1

    .line 403
    :cond_0
    const/4 v13, 0x0

    .line 481
    :goto_0
    return-object v13

    .line 407
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v17

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x500

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 408
    .local v7, factor:I
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 409
    iput v7, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 410
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 411
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_2

    .line 412
    const/4 v13, 0x0

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 415
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 418
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 419
    .local v9, matrix:Landroid/graphics/Matrix;
    const/high16 v14, 0x3f80

    .line 420
    .local v14, scale:F
    move/from16 v0, v17

    if-le v0, v8, :cond_6

    .line 421
    const/16 v18, 0x500

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 422
    const/high16 v18, 0x44a0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 424
    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 425
    const/16 v17, 0x500

    .line 435
    :cond_3
    :goto_1
    invoke-virtual {v9, v14, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 438
    const/4 v15, 0x0

    .line 439
    .local v15, swapDimension:Z
    iget-object v10, v11, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 440
    .local v10, mimeType:Ljava/lang/String;
    const-string v18, "image/jpeg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 441
    const/4 v6, 0x0

    .line 443
    .local v6, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    .end local v6           #exif:Landroid/media/ExifInterface;
    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .restart local v6       #exif:Landroid/media/ExifInterface;
    const-string v18, "Orientation"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v12

    .line 451
    .local v12, orientation:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_4

    .line 452
    packed-switch v12, :pswitch_data_0

    .line 471
    .end local v6           #exif:Landroid/media/ExifInterface;
    .end local v12           #orientation:I
    :cond_4
    :goto_2
    :pswitch_0
    if-eqz v15, :cond_5

    .line 472
    move/from16 v16, v17

    .line 473
    .local v16, tmp:I
    move/from16 v17, v8

    .line 474
    move/from16 v8, v16

    .line 476
    .end local v16           #tmp:I
    :cond_5
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 477
    .local v13, result:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 478
    .local v4, canvas:Landroid/graphics/Canvas;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v3, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 479
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 428
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v10           #mimeType:Ljava/lang/String;
    .end local v13           #result:Landroid/graphics/Bitmap;
    .end local v15           #swapDimension:Z
    :cond_6
    const/16 v18, 0x500

    move/from16 v0, v18

    if-le v8, v0, :cond_3

    .line 429
    const/high16 v18, 0x44a0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 431
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 432
    const/16 v8, 0x500

    goto :goto_1

    .line 444
    .restart local v10       #mimeType:Ljava/lang/String;
    .restart local v15       #swapDimension:Z
    :catch_0
    move-exception v5

    .line 445
    .local v5, e:Ljava/io/IOException;
    const-string v18, "Notes"

    const-string v19, "createThumbnail fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 454
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #exif:Landroid/media/ExifInterface;
    .restart local v12       #orientation:I
    :pswitch_1
    const/high16 v18, 0x42b4

    div-int/lit8 v19, v8, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v8, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 455
    const/4 v15, 0x1

    .line 456
    goto :goto_2

    .line 458
    :pswitch_2
    const/high16 v18, 0x4334

    div-int/lit8 v19, v17, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v8, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/16 :goto_2

    .line 461
    :pswitch_3
    const/high16 v18, 0x4387

    div-int/lit8 v19, v17, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v17, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 462
    const/4 v15, 0x1

    .line 463
    goto/16 :goto_2

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static insertNoteAtomic(Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 2
    .parameter "context"
    .parameter "noteValues"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 542
    .local p2, dataValuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {p1, p2}, Lmiui/provider/Notes$Utils;->addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 544
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_ATOMIC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static marshall(Landroid/os/Bundle;)[B
    .locals 2
    .parameter "bundle"

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 559
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    return-object v1

    .line 562
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static removeDataValuesFromNoteValues(Landroid/content/ContentValues;)Ljava/util/ArrayList;
    .locals 4
    .parameter "noteValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    const-string v3, "data_bytes"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 580
    .local v1, data:[B
    const-string v3, "data_bytes"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 581
    if-eqz v1, :cond_0

    .line 582
    invoke-static {v1}, Lmiui/provider/Notes$Utils;->unmarshall([B)Landroid/os/Bundle;

    move-result-object v0

    .line 583
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "data_values"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 586
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static unmarshall([B)Landroid/os/Bundle;
    .locals 3
    .parameter "data"

    .prologue
    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 569
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 570
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 571
    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 571
    return-object v1

    .line 573
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static updateAllAlarms(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.notes.action.REFRESH_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 593
    return-void
.end method

.method public static updateAllWidgets(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.notes.action.REFRESH_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    return-void
.end method

.method public static updateNoteAtomic(Landroid/content/Context;JLandroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "noteId"
    .parameter "noteValues"
    .parameter
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 534
    .local p4, dataValuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {p3, p4}, Lmiui/provider/Notes$Utils;->addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 536
    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_ATOMIC_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 537
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p5, p6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
