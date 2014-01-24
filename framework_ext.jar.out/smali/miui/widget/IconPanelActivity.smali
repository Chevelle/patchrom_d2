.class public abstract Lmiui/widget/IconPanelActivity;
.super Landroid/app/Activity;
.source "IconPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/IconPanelActivity$BitmapBlurTask;,
        Lmiui/widget/IconPanelActivity$StartReceiver;
    }
.end annotation


# static fields
.field static final DELAY_SCREEN_SHOT:I = 0x28

#the value of this static final field might be set in the static constructor
.field static final DISPLAY_METRICES_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final DISPLAY_METRICES_WIDTH:I = 0x0

.field protected static final DURATION_BLUR_ANIM:I = 0x12c

.field protected static final DURATION_FLIP_ANIM:I = 0x190

.field protected static final RADIUS_BLUR:I = 0x8

.field protected static final SCALE_SCREEN_SHOT:F = 0.3f

.field protected static STATUS_CLOSED:I = 0x0

.field protected static STATUS_CLOSING:I = 0x0

.field protected static STATUS_OPENED:I = 0x0

.field protected static STATUS_OPENING:I = 0x0

.field protected static STATUS_UNINITIALIZED:I = 0x0

.field static final TAG:Ljava/lang/String; = "IconPanelActivity"


# instance fields
.field private mCloseOnTouchOutside:Z

.field mImageBlur:Landroid/widget/ImageView;

.field mImageHomeLayer:Landroid/widget/ImageView;

.field mImageIcon:Landroid/widget/ImageView;

.field private mRoot:Landroid/view/ViewGroup;

.field private mStartReceiver:Landroid/content/BroadcastReceiver;

.field mStatus:I

.field private mWidgetWrapper:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lmiui/widget/IconPanelActivity;->DISPLAY_METRICES_WIDTH:I

    .line 57
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lmiui/widget/IconPanelActivity;->DISPLAY_METRICES_HEIGHT:I

    .line 74
    const/4 v0, 0x0

    sput v0, Lmiui/widget/IconPanelActivity;->STATUS_UNINITIALIZED:I

    .line 75
    const/4 v0, 0x1

    sput v0, Lmiui/widget/IconPanelActivity;->STATUS_OPENING:I

    .line 76
    const/4 v0, 0x2

    sput v0, Lmiui/widget/IconPanelActivity;->STATUS_OPENED:I

    .line 77
    const/4 v0, 0x3

    sput v0, Lmiui/widget/IconPanelActivity;->STATUS_CLOSING:I

    .line 78
    const/4 v0, 0x4

    sput v0, Lmiui/widget/IconPanelActivity;->STATUS_CLOSED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/IconPanelActivity;->mCloseOnTouchOutside:Z

    .line 80
    sget v0, Lmiui/widget/IconPanelActivity;->STATUS_UNINITIALIZED:I

    iput v0, p0, Lmiui/widget/IconPanelActivity;->mStatus:I

    .line 360
    return-void
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FFFII)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "background"
    .parameter "foreground"
    .parameter "foregroundScaleX"
    .parameter "foregroundScaleY"
    .parameter "scaleBlur"
    .parameter "radiusBlur"
    .parameter "maskColor"

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 442
    .local v7, srcWidth:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget v9, Lmiui/widget/IconPanelActivity;->DISPLAY_METRICES_HEIGHT:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v6, v8

    .line 443
    .local v6, srcHeight:F
    mul-float v3, v7, p4

    .line 444
    .local v3, dstWidth:F
    mul-float v2, v6, p4

    .line 445
    .local v2, dstHeight:F
    float-to-int v8, v3

    float-to-int v9, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 446
    .local v4, out:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 447
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 448
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 449
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 450
    div-float v8, v3, v7

    div-float v9, v2, v6

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 451
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, p0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 452
    if-eqz p1, :cond_0

    .line 453
    const/high16 v8, 0x4000

    div-float v8, v7, v8

    const/high16 v9, 0x4000

    div-float v9, v6, v9

    invoke-virtual {v1, p2, p3, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 454
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, p1, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 456
    :cond_0
    move/from16 v0, p5

    invoke-static {v4, v4, v0}, Lmiui/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 457
    if-eqz p6, :cond_1

    .line 458
    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 460
    :cond_1
    return-object v4
.end method

.method static getHomeLayer(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    .line 471
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "icon_panel"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 472
    .local v5, tmp:Ljava/io/File;
    const/4 v1, 0x0

    .line 473
    .local v1, is:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 475
    .local v3, os:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 476
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_5

    .line 477
    .end local v3           #os:Ljava/io/FileOutputStream;
    .local v4, os:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    const-wide/16 v8, 0x0

    sget v10, Llibcore/io/OsConstants;->SEEK_SET:I

    invoke-interface {v6, v7, v8, v9, v10}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 478
    const-string v6, "SurfaceFlinger"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 479
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_10

    .line 480
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_2
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    const-wide/16 v8, 0x0

    sget v10, Llibcore/io/OsConstants;->SEEK_SET:I

    invoke-interface {v6, v7, v8, v9, v10}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 481
    invoke-static {v2}, Lmiui/widget/IconPanelActivity;->getHomeLayer(Ljava/io/FileInputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_11

    move-result v6

    .line 491
    if-eqz v2, :cond_0

    .line 493
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    .line 498
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 500
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f

    .line 504
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 507
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_2
    return v6

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v6, "IconPanelActivity"

    const-string v7, "getHomeLayer"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 491
    if-eqz v1, :cond_2

    .line 493
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 498
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 500
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 504
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 507
    const/4 v6, -0x1

    goto :goto_2

    .line 484
    :catch_1
    move-exception v0

    .line 485
    .local v0, e:Landroid/os/RemoteException;
    :goto_6
    :try_start_8
    const-string v6, "IconPanelActivity"

    const-string v7, "getHomeLayer"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 491
    if-eqz v1, :cond_4

    .line 493
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 498
    :cond_4
    :goto_7
    if-eqz v3, :cond_3

    .line 500
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 501
    :catch_2
    move-exception v6

    goto :goto_5

    .line 486
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    .line 487
    .local v0, e:Ljava/io/IOException;
    :goto_8
    :try_start_b
    const-string v6, "IconPanelActivity"

    const-string v7, "getHomeLayer"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 491
    if-eqz v1, :cond_5

    .line 493
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 498
    :cond_5
    :goto_9
    if-eqz v3, :cond_3

    .line 500
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_5

    .line 501
    :catch_4
    move-exception v6

    goto :goto_5

    .line 488
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 489
    .local v0, e:Llibcore/io/ErrnoException;
    :goto_a
    :try_start_e
    const-string v6, "IconPanelActivity"

    const-string v7, "getHomeLayer"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 491
    if-eqz v1, :cond_6

    .line 493
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 498
    :cond_6
    :goto_b
    if-eqz v3, :cond_3

    .line 500
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_5

    .line 501
    :catch_6
    move-exception v6

    goto :goto_5

    .line 491
    .end local v0           #e:Llibcore/io/ErrnoException;
    :catchall_0
    move-exception v6

    :goto_c
    if-eqz v1, :cond_7

    .line 493
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 498
    :cond_7
    :goto_d
    if-eqz v3, :cond_8

    .line 500
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 504
    :cond_8
    :goto_e
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 491
    throw v6

    .line 494
    :catch_7
    move-exception v7

    goto :goto_d

    .line 501
    :catch_8
    move-exception v7

    goto :goto_e

    .line 494
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v6

    goto :goto_4

    .line 501
    :catch_a
    move-exception v6

    goto :goto_5

    .line 494
    .local v0, e:Landroid/os/RemoteException;
    :catch_b
    move-exception v6

    goto :goto_7

    .local v0, e:Ljava/io/IOException;
    :catch_c
    move-exception v6

    goto :goto_9

    .local v0, e:Llibcore/io/ErrnoException;
    :catch_d
    move-exception v6

    goto :goto_b

    .end local v0           #e:Llibcore/io/ErrnoException;
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v7

    goto :goto_0

    .line 501
    :catch_f
    move-exception v7

    goto :goto_1

    .line 491
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_c

    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_c

    .line 488
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_a

    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_a

    .line 486
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_13
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_8

    .line 484
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_14
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_15
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_6

    .line 482
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_16
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_17
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private static getHomeLayer(Ljava/io/FileInputStream;)I
    .locals 11
    .parameter "is"

    .prologue
    const/4 v8, -0x1

    .line 512
    if-eqz p0, :cond_1

    .line 513
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v9

    new-array v0, v9, [B

    .line 514
    .local v0, buffer:[B
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 515
    .local v6, size:I
    new-instance v2, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v2, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V

    .line 516
    .local v2, dump:Ljava/lang/String;
    const-string v9, "com.miui.home.launcher.Launcher"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 517
    .local v5, servicePos:I
    if-eq v5, v8, :cond_1

    .line 518
    const-string v9, "z="

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 519
    .local v7, zPos:I
    if-eq v7, v8, :cond_1

    .line 520
    const-string v9, ","

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 521
    .local v1, commaPos:I
    if-eq v1, v8, :cond_1

    .line 522
    move v4, v7

    .line 523
    .local v4, numPos:I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 524
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 528
    :cond_0
    if-eq v4, v1, :cond_1

    .line 529
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 540
    .end local v0           #buffer:[B
    .end local v1           #commaPos:I
    .end local v2           #dump:Ljava/lang/String;
    .end local v4           #numPos:I
    .end local v5           #servicePos:I
    .end local v6           #size:I
    .end local v7           #zPos:I
    :cond_1
    :goto_1
    return v8

    .line 523
    .restart local v0       #buffer:[B
    .restart local v1       #commaPos:I
    .restart local v2       #dump:Ljava/lang/String;
    .restart local v4       #numPos:I
    .restart local v5       #servicePos:I
    .restart local v6       #size:I
    .restart local v7       #zPos:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 535
    .end local v0           #buffer:[B
    .end local v1           #commaPos:I
    .end local v2           #dump:Ljava/lang/String;
    .end local v4           #numPos:I
    .end local v5           #servicePos:I
    .end local v6           #size:I
    .end local v7           #zPos:I
    :catch_0
    move-exception v3

    .line 536
    .local v3, e:Ljava/io/IOException;
    const-string v9, "IconPanelActivity"

    const-string v10, "getHomeLayer"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 537
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 538
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v9, "IconPanelActivity"

    const-string v10, "getHomeLayer"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isOutOfBounds(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 258
    invoke-virtual {p0}, Lmiui/widget/IconPanelActivity;->getWidget()Landroid/view/View;

    move-result-object v2

    .line 259
    .local v2, widget:Landroid/view/View;
    if-nez v2, :cond_0

    .line 268
    :goto_0
    return v6

    .line 263
    :cond_0
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 264
    .local v0, location:[I
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 266
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 267
    .local v4, y:I
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 268
    .local v1, slop:I
    aget v7, v0, v5

    sub-int/2addr v7, v1

    if-lt v3, v7, :cond_1

    aget v7, v0, v6

    sub-int/2addr v7, v1

    if-lt v4, v7, :cond_1

    aget v7, v0, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    if-gt v3, v7, :cond_1

    aget v7, v0, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    if-le v4, v7, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    move v6, v5

    goto :goto_0
.end method

.method static notifyHome(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "cmd"

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ICON_PANEL_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, msg:Landroid/content/Intent;
    const-string v1, "miui.intent.extra.ICON_PANEL_COMMAND"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    return-void
.end method

.method static notifyHomeOnFirstDraw(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/high16 v1, 0x3f80

    .line 397
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 398
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 399
    new-instance v1, Lmiui/widget/IconPanelActivity$4;

    invoke-direct {v1, p0}, Lmiui/widget/IconPanelActivity$4;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 415
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    return-void
.end method

.method public static setViewBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "v"
    .parameter "bounds"

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 465
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 466
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 467
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 468
    return-void
.end method

.method public static shotLayer(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"

    .prologue
    .line 419
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 420
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 421
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0}, Lmiui/widget/IconPanelActivity;->getHomeLayer(Landroid/content/Context;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private startCloseAnimation()V
    .locals 5

    .prologue
    .line 303
    iget v2, p0, Lmiui/widget/IconPanelActivity;->mStatus:I

    sget v3, Lmiui/widget/IconPanelActivity;->STATUS_OPENED:I

    if-eq v2, v3, :cond_0

    .line 333
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v2, p0, Lmiui/widget/IconPanelActivity;->mImageHomeLayer:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    new-instance v0, Lmiui/widget/FlipAnimation;

    iget-object v2, p0, Lmiui/widget/IconPanelActivity;->mImageIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/IconPanelActivity;->getWidget()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lmiui/widget/FlipAnimation;-><init>(Landroid/view/View;Landroid/view/View;Z)V

    .line 308
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 309
    new-instance v2, Lmiui/widget/IconPanelActivity$2;

    invoke-direct {v2, p0}, Lmiui/widget/IconPanelActivity$2;-><init>(Lmiui/widget/IconPanelActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 326
    iget-object v2, p0, Lmiui/widget/IconPanelActivity;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 327
    sget v2, Lmiui/widget/IconPanelActivity;->STATUS_CLOSING:I

    invoke-virtual {p0, v2}, Lmiui/widget/IconPanelActivity;->setStatus(I)V

    .line 329
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 330
    .local v1, blurAnim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 331
    iget-object v2, p0, Lmiui/widget/IconPanelActivity;->mImageBlur:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    iget-object v2, p0, Lmiui/widget/IconPanelActivity;->mImageBlur:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createWidget(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected getWidget()Landroid/view/View;
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lmiui/widget/IconPanelActivity;->mWidgetWrapper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/IconPanelActivity;->mWidgetWrapper:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lmiui/widget/IconPanelActivity;->startCloseAnimation()V

    .line 233
    return-void
.end method

.method final onBlurFinished(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 336
    iget-object v1, p0, Lmiui/widget/IconPanelActivity;->mImageBlur:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 338
    iget-object v1, p0, Lmiui/widget/IconPanelActivity;->mImageBlur:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 339
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 340
    .local v0, blurAnim:Landroid/view/animation/Animation;
    new-instance v1, Lmiui/widget/IconPanelActivity$3;

    invoke-direct {v1, p0}, Lmiui/widget/IconPanelActivity$3;-><init>(Lmiui/widget/IconPanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 355
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 356
    iget-object v1, p0, Lmiui/widget/IconPanelActivity;->mImageBlur:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    .end local v0           #blurAnim:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lmiui/widget/IconPanelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 114
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 115
    invoke-virtual {p0}, Lmiui/widget/IconPanelActivity;->finish()V

    .line 156
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 120
    .local v0, bounds:Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lmiui/widget/IconPanelActivity;->finish()V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0, v7, v7}, Lmiui/widget/IconPanelActivity;->overridePendingTransition(II)V

    .line 127
    const v5, 0x6030072

    invoke-virtual {p0, v5}, Lmiui/widget/IconPanelActivity;->setContentView(I)V

    .line 128
    const v5, 0x60b00e9

    invoke-virtual {p0, v5}, Lmiui/widget/IconPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lmiui/widget/IconPanelActivity;->mRoot:Landroid/view/ViewGroup;

    .line 131
    const v5, 0x60b00eb

    invoke-virtual {p0, v5}, Lmiui/widget/IconPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lmiui/widget/IconPanelActivity;->mImageIcon:Landroid/widget/ImageView;

    .line 133
    const-string v5, "miui.intent.extra.ICON"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 134
    .local v2, icon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 135
    iget-object v5, p0, Lmiui/widget/IconPanelActivity;->mImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    :goto_1
    iget-object v5, p0, Lmiui/widget/IconPanelActivity;->mImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v5, p0, Lmiui/widget/IconPanelActivity;->mImageIcon:Landroid/widget/ImageView;

    invoke-static {v5, v0}, Lmiui/widget/IconPanelActivity;->setViewBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 143
    const v5, 0x60b00ea

    invoke-virtual {p0, v5}, Lmiui/widget/IconPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lmiui/widget/IconPanelActivity;->mImageBlur:Landroid/widget/ImageView;

    .line 144
    const v5, 0x60b00ed

    invoke-virtual {p0, v5}, Lmiui/widget/IconPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lmiui/widget/IconPanelActivity;->mImageHomeLayer:Landroid/widget/ImageView;

    .line 147
    const v5, 0x60b00ec

    invoke-virtual {p0, v5}, Lmiui/widget/IconPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lmiui/widget/IconPanelActivity;->mWidgetWrapper:Landroid/view/ViewGroup;

    .line 148
    iget-object v5, p0, Lmiui/widget/IconPanelActivity;->mWidgetWrapper:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Lmiui/widget/IconPanelActivity;->createWidget(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 149
    .local v4, widget:Landroid/view/View;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v5, p0, Lmiui/widget/IconPanelActivity;->mWidgetWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0, v4}, Lmiui/widget/IconPanelActivity;->onWidgetAttached(Landroid/view/View;)V

    .line 153
    new-instance v5, Lmiui/widget/IconPanelActivity$StartReceiver;

    invoke-direct {v5, p0}, Lmiui/widget/IconPanelActivity$StartReceiver;-><init>(Lmiui/widget/IconPanelActivity;)V

    iput-object v5, p0, Lmiui/widget/IconPanelActivity;->mStartReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "miui.intent.action.ICON_PANEL_COMMAND"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lmiui/widget/IconPanelActivity;->mStartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lmiui/widget/IconPanelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 137
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v4           #widget:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lmiui/widget/IconPanelActivity;->mImageIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/IconPanelActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lmiui/widget/IconPanelActivity;->mStartReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lmiui/widget/IconPanelActivity;->mStartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmiui/widget/IconPanelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 228
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 216
    invoke-virtual {p0}, Lmiui/widget/IconPanelActivity;->finish()V

    .line 218
    sget v0, Lmiui/widget/IconPanelActivity;->STATUS_CLOSED:I

    invoke-virtual {p0, v0}, Lmiui/widget/IconPanelActivity;->setStatus(I)V

    .line 219
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    iget v0, p0, Lmiui/widget/IconPanelActivity;->mStatus:I

    sget v1, Lmiui/widget/IconPanelActivity;->STATUS_UNINITIALIZED:I

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lmiui/widget/IconPanelActivity;->mImageIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lmiui/widget/IconPanelActivity;->notifyHomeOnFirstDraw(Landroid/view/View;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected onStatusChanged(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 99
    const-string v0, "IconPanelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lmiui/widget/IconPanelActivity;->shouldCloseOnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lmiui/widget/IconPanelActivity;->startCloseAnimation()V

    .line 239
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onWidgetAttached(Landroid/view/View;)V
    .locals 2
    .parameter "widget"

    .prologue
    .line 95
    const-string v0, "IconPanelActivity"

    const-string v1, "onWidgetAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 0
    .parameter "closeOnTouchOutside"

    .prologue
    .line 246
    iput-boolean p1, p0, Lmiui/widget/IconPanelActivity;->mCloseOnTouchOutside:Z

    .line 247
    return-void
.end method

.method final setStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 103
    iget v0, p0, Lmiui/widget/IconPanelActivity;->mStatus:I

    if-eq v0, p1, :cond_0

    .line 104
    iput p1, p0, Lmiui/widget/IconPanelActivity;->mStatus:I

    .line 105
    invoke-virtual {p0, p1}, Lmiui/widget/IconPanelActivity;->onStatusChanged(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public shouldCloseOnTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 250
    iget-boolean v1, p0, Lmiui/widget/IconPanelActivity;->mCloseOnTouchOutside:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lmiui/widget/IconPanelActivity;->mWidgetWrapper:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/IconPanelActivity;->isOutOfBounds(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startOpenAnimation()V
    .locals 4

    .prologue
    .line 279
    new-instance v0, Lmiui/widget/FlipAnimation;

    iget-object v1, p0, Lmiui/widget/IconPanelActivity;->mImageIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/IconPanelActivity;->getWidget()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiui/widget/FlipAnimation;-><init>(Landroid/view/View;Landroid/view/View;Z)V

    .line 280
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 281
    new-instance v1, Lmiui/widget/IconPanelActivity$1;

    invoke-direct {v1, p0}, Lmiui/widget/IconPanelActivity$1;-><init>(Lmiui/widget/IconPanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 297
    iget-object v1, p0, Lmiui/widget/IconPanelActivity;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    sget v1, Lmiui/widget/IconPanelActivity;->STATUS_OPENING:I

    invoke-virtual {p0, v1}, Lmiui/widget/IconPanelActivity;->setStatus(I)V

    .line 300
    return-void
.end method
