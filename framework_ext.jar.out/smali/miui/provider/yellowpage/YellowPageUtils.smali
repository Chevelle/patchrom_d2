.class public Lmiui/provider/yellowpage/YellowPageUtils;
.super Ljava/lang/Object;
.source "YellowPageUtils.java"


# static fields
.field private static final ANTISPAM_COLUMN_CID:I = 0x1

.field private static final ANTISPAM_COLUMN_MARKED_COUNT:I = 0x3

.field private static final ANTISPAM_COLUMN_NORMALIZED_NUMBER:I = 0x4

.field private static final ANTISPAM_COLUMN_PID:I = 0x0

.field private static final ANTISPAM_COLUMN_TYPE:I = 0x2

.field private static final ANTISPAM_PROJECTION:[Ljava/lang/String; = null

.field private static final PHONE_COLUMN_MIN_MATCH:I = 0x9

.field private static final PHONE_COLUMN_NORMALIZED_NUMBER:I = 0xa

.field private static final PHONE_COLUMN_PHOTO_URL:I = 0x3

.field private static final PHONE_COLUMN_PROVIDER_ID:I = 0x1

.field private static final PHONE_COLUMN_SUSPECT:I = 0xb

.field private static final PHONE_COLUMN_TAG:I = 0x2

.field private static final PHONE_COLUMN_TAG_PINYIN:I = 0x7

.field private static final PHONE_COLUMN_THUMBNAIL_URL:I = 0x4

.field private static final PHONE_COLUMN_VISIBLE:I = 0x8

.field private static final PHONE_COLUMN_YID:I = 0x0

.field private static final PHONE_COLUMN_YP_NAME:I = 0x5

.field private static final PHONE_COLUMN_YP_NAME_PINYIN:I = 0x6

.field private static final PHONE_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "YellowPageUtils"

.field private static final sCidCategories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/provider/yellowpage/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/provider/yellowpage/model/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yid"

    aput-object v1, v0, v3

    const-string v1, "provider_id"

    aput-object v1, v0, v4

    const-string v1, "tag"

    aput-object v1, v0, v5

    const-string v1, "photo_url"

    aput-object v1, v0, v6

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "yellow_page_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "yellow_page_name_pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tag_pinyin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hide"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_match"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "suspect"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pid"

    aput-object v1, v0, v3

    const-string v1, "cid"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "marked_count"

    aput-object v1, v0, v6

    const-string v1, "normalized_number"

    aput-object v1, v0, v7

    sput-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAntispamCategory(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .parameter "context"
    .parameter "categoryName"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const-string v0, "YellowPageUtils"

    const-string v1, "The category name must not be null"

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "MAX(cid)"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 630
    .local v6, c:Landroid/database/Cursor;
    const/16 v7, 0x2710

    .line 631
    .local v7, categoryId:I
    if-eqz v6, :cond_2

    .line 633
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 635
    .local v9, maxCatId:I
    if-lt v9, v7, :cond_1

    .line 636
    add-int/lit8 v7, v9, 0x1

    .line 642
    .end local v9           #maxCatId:I
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 646
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 647
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "cid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v0, "names"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 650
    return v7

    .line 639
    .end local v10           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 640
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 642
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/CustomNumberCategory;
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 660
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/provider/yellowpage/YellowPageUtils;->getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/provider/yellowpage/model/CustomNumberCategory;

    move-result-object v0

    return-object v0
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/provider/yellowpage/model/CustomNumberCategory;
    .locals 18
    .parameter "context"
    .parameter "number"
    .parameter "filterOneRingCall"

    .prologue
    .line 672
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    const/4 v5, 0x0

    .line 711
    :cond_0
    :goto_0
    return-object v5

    .line 675
    :cond_1
    if-eqz p2, :cond_4

    const-string v4, "type<>4"

    .line 678
    .local v4, selection:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lmiui/provider/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 681
    .local v12, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 682
    .local v15, category:Lmiui/provider/yellowpage/model/Category;
    const/4 v11, 0x0

    .line 683
    .local v11, typeCustom:Z
    const/4 v10, 0x0

    .line 684
    .local v10, markedCount:I
    if-eqz v12, :cond_7

    .line 686
    :try_start_0
    invoke-static/range {p0 .. p0}, Lmiui/provider/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    .line 687
    :cond_2
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 688
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 689
    .local v13, catId:I
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 691
    .local v17, type:I
    sget-object v1, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/provider/yellowpage/model/Category;

    .line 692
    .local v14, cate:Lmiui/provider/yellowpage/model/Category;
    const/4 v1, 0x3

    move/from16 v0, v17

    if-ne v0, v1, :cond_5

    const/4 v11, 0x1

    .line 693
    :goto_3
    if-eqz v15, :cond_3

    if-eqz v11, :cond_2

    .line 694
    :cond_3
    move-object v15, v14

    .line 695
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto :goto_2

    .line 675
    .end local v4           #selection:Ljava/lang/String;
    .end local v10           #markedCount:I
    .end local v11           #typeCustom:Z
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #catId:I
    .end local v14           #cate:Lmiui/provider/yellowpage/model/Category;
    .end local v15           #category:Lmiui/provider/yellowpage/model/Category;
    .end local v17           #type:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 692
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v10       #markedCount:I
    .restart local v11       #typeCustom:Z
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v13       #catId:I
    .restart local v14       #cate:Lmiui/provider/yellowpage/model/Category;
    .restart local v15       #category:Lmiui/provider/yellowpage/model/Category;
    .restart local v17       #type:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 698
    .end local v13           #catId:I
    .end local v14           #cate:Lmiui/provider/yellowpage/model/Category;
    .end local v17           #type:I
    :catch_0
    move-exception v16

    .line 699
    .local v16, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    .end local v16           #e:Ljava/lang/Exception;
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 705
    :cond_7
    const/4 v5, 0x0

    .line 706
    .local v5, customNumberCate:Lmiui/provider/yellowpage/model/CustomNumberCategory;
    if-eqz v15, :cond_0

    .line 707
    new-instance v5, Lmiui/provider/yellowpage/model/CustomNumberCategory;

    .end local v5           #customNumberCate:Lmiui/provider/yellowpage/model/CustomNumberCategory;
    invoke-virtual {v15}, Lmiui/provider/yellowpage/model/Category;->getCategoryId()I

    move-result v6

    invoke-virtual {v15}, Lmiui/provider/yellowpage/model/Category;->getCategoryAllNames()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lmiui/provider/yellowpage/model/Category;->getCategoryType()I

    move-result v8

    move-object/from16 v9, p1

    invoke-direct/range {v5 .. v11}, Lmiui/provider/yellowpage/model/CustomNumberCategory;-><init>(ILjava/lang/String;ILjava/lang/String;IZ)V

    .restart local v5       #customNumberCate:Lmiui/provider/yellowpage/model/CustomNumberCategory;
    goto :goto_0

    .line 701
    .end local v5           #customNumberCate:Lmiui/provider/yellowpage/model/CustomNumberCategory;
    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getCategories(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "cid"

    aput-object v4, v2, v5

    const-string v4, "names"

    aput-object v4, v2, v12

    const-string v4, "type"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 566
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 568
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 570
    .local v8, categoryId:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 571
    .local v10, names:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 572
    .local v11, type:I
    new-instance v7, Lmiui/provider/yellowpage/model/Category;

    invoke-direct {v7, v8, v10, v11}, Lmiui/provider/yellowpage/model/Category;-><init>(ILjava/lang/String;I)V

    .line 573
    .local v7, category:Lmiui/provider/yellowpage/model/Category;
    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v7           #category:Lmiui/provider/yellowpage/model/Category;
    .end local v8           #categoryId:I
    .end local v10           #names:Ljava/lang/String;
    .end local v11           #type:I
    :catch_0
    move-exception v9

    .line 576
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    .end local v9           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_1
    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    return-object v3

    .line 578
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 581
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public static getCidName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cid"

    .prologue
    const/4 v1, 0x0

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, category:Lmiui/provider/yellowpage/model/Category;
    sget-object v2, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    sget-object v2, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #category:Lmiui/provider/yellowpage/model/Category;
    check-cast v0, Lmiui/provider/yellowpage/model/Category;

    .line 544
    .restart local v0       #category:Lmiui/provider/yellowpage/model/Category;
    if-nez v0, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-object v1

    .line 544
    :cond_1
    invoke-virtual {v0}, Lmiui/provider/yellowpage/model/Category;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 548
    :cond_2
    invoke-static {p0}, Lmiui/provider/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    .line 550
    sget-object v2, Lmiui/provider/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #category:Lmiui/provider/yellowpage/model/Category;
    check-cast v0, Lmiui/provider/yellowpage/model/Category;

    .line 551
    .restart local v0       #category:Lmiui/provider/yellowpage/model/Category;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/model/Category;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;
    .locals 2
    .parameter "context"
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPage;

    move-result-object v0

    .line 406
    .local v0, yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, p0, p1}, Lmiui/provider/yellowpage/model/YellowPage;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;

    move-result-object v1

    .line 409
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPage;
    .locals 42
    .parameter "context"
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p0 .. p0}, Lmiui/provider/yellowpage/YellowPageUtils;->isYellowPageEnable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    :cond_0
    const/4 v12, 0x0

    .line 268
    :cond_1
    :goto_0
    return-object v12

    .line 208
    :cond_2
    invoke-static/range {p0 .. p1}, Lmiui/provider/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, normalizedNumber:Ljava/lang/String;
    const-string v3, "YellowPageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCloudYellowPage:The requested phone normalized number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    const/4 v12, 0x0

    goto :goto_0

    .line 214
    :cond_3
    new-instance v38, Lmiui/provider/yellowpage/request/JSONRequest;

    invoke-static {}, Lmiui/provider/yellowpage/request/HostManager;->getYellowPageQueryUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lmiui/provider/yellowpage/request/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    .local v38, request:Lmiui/provider/yellowpage/request/JSONRequest;
    const-string v3, "phone"

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Lmiui/provider/yellowpage/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "raw_phone"

    invoke-static/range {p1 .. p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Lmiui/provider/yellowpage/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v12, 0x0

    .line 219
    .local v12, yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    invoke-virtual/range {v38 .. v38}, Lmiui/provider/yellowpage/request/JSONRequest;->getStatus()I

    move-result v39

    .line 220
    .local v39, statusCode:I
    if-nez v39, :cond_1

    .line 221
    new-instance v37, Lorg/json/JSONObject;

    invoke-virtual/range {v38 .. v38}, Lmiui/provider/yellowpage/request/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 222
    .local v37, json:Lorg/json/JSONObject;
    const-string v3, "yp"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 223
    .local v41, ypDataString:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 224
    const-string v3, "YellowPageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCloudYellowPage:The number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a remote yellowpage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static/range {v41 .. v41}, Lmiui/provider/yellowpage/model/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPage;

    move-result-object v12

    .line 227
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lmiui/provider/yellowpage/model/YellowPage;->getId()J

    move-result-wide v3

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-lez v3, :cond_1

    .line 228
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lmiui/provider/yellowpage/utils/YellowPageHandler;->insertYellowPage(Landroid/content/Context;Lmiui/provider/yellowpage/model/YellowPage;)V

    goto/16 :goto_0

    .line 231
    :cond_4
    const-string v3, "atd"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    .line 232
    if-eqz v37, :cond_6

    .line 234
    const-string v3, "YellowPageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCloudYellowPage:The number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a remote antispam"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v3, "count"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 236
    .local v11, markedCount:I
    const-string v3, "catId"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    .line 237
    .local v36, cateId:I
    const-string v3, "provider"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 238
    .local v10, providerId:I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/YellowPageUtils;->getCidName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, tag:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 244
    new-instance v2, Lmiui/provider/yellowpage/model/YellowPagePhone;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v14}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v12           #yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    .local v2, phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v20, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v12, Lmiui/provider/yellowpage/model/YellowPage;

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v25, v10

    invoke-direct/range {v12 .. v35}, Lmiui/provider/yellowpage/model/YellowPage;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v2           #phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    .end local v20           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    .restart local v12       #yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    :cond_5
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v40, values:Landroid/content/ContentValues;
    const-string v3, "number"

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v3, "cid"

    const-string v4, "catId"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v3, "pid"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v3, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string v3, "marked_count"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v3, "normalized_number"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 263
    .end local v6           #tag:Ljava/lang/String;
    .end local v10           #providerId:I
    .end local v11           #markedCount:I
    .end local v36           #cateId:I
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_6
    const-string v3, "YellowPageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCloudYellowPage:There is no yp or atd data for number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getLocalPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;
    .locals 31
    .parameter "context"
    .parameter "number"

    .prologue
    .line 414
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v6, Lmiui/provider/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lmiui/provider/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 417
    .local v28, c:Landroid/database/Cursor;
    if-eqz v28, :cond_3

    .line 419
    :try_start_0
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    const-string v1, "YellowPageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLocalPhoneInfo:The number "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is a local yellowpage"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v1, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 422
    .local v9, providerId:I
    const/4 v1, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, tag:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, ypName:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 425
    .local v2, ypId:J
    const/4 v1, 0x6

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 426
    .local v12, ypNamePinyin:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 427
    .local v13, tagPinyin:Ljava/lang/String;
    const/16 v1, 0xa

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, normalizedNumber:Ljava/lang/String;
    const/16 v1, 0x8

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v11, 0x1

    .line 429
    .local v11, isVisible:Z
    :goto_0
    const/16 v1, 0xb

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    const/4 v14, 0x1

    .line 430
    .local v14, suspect:Z
    :goto_1
    new-instance v1, Lmiui/provider/yellowpage/model/YellowPagePhone;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v14}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 482
    .end local v2           #ypId:J
    .end local v4           #ypName:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v7           #normalizedNumber:Ljava/lang/String;
    .end local v9           #providerId:I
    .end local v11           #isVisible:Z
    .end local v12           #ypNamePinyin:Ljava/lang/String;
    .end local v13           #tagPinyin:Ljava/lang/String;
    .end local v14           #suspect:Z
    :goto_2
    return-object v1

    .line 428
    .restart local v2       #ypId:J
    .restart local v4       #ypName:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v7       #normalizedNumber:Ljava/lang/String;
    .restart local v9       #providerId:I
    .restart local v12       #ypNamePinyin:Ljava/lang/String;
    .restart local v13       #tagPinyin:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 429
    .restart local v11       #isVisible:Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 434
    .end local v2           #ypId:J
    .end local v4           #ypName:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v7           #normalizedNumber:Ljava/lang/String;
    .end local v9           #providerId:I
    .end local v11           #isVisible:Z
    .end local v12           #ypNamePinyin:Ljava/lang/String;
    .end local v13           #tagPinyin:Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 435
    .local v29, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    .end local v29           #e:Ljava/lang/Exception;
    :cond_2
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    sget-object v17, Lmiui/provider/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const-string v18, "type<>4"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 445
    if-eqz v28, :cond_8

    .line 447
    const/16 v30, 0x0

    .line 448
    .local v30, ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :cond_4
    :try_start_2
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 449
    const-string v1, "YellowPageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLocalPhoneInfo:The number "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is a local antispam"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v1, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/YellowPageUtils;->getCidName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    .line 455
    .local v19, cidName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 459
    const/4 v1, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 460
    .restart local v9       #providerId:I
    const/4 v1, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_7

    const/16 v22, 0x3

    .line 462
    .local v22, type:I
    :goto_3
    const/4 v1, 0x3

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 463
    .local v24, markedCount:I
    const/4 v1, 0x4

    move-object/from16 v0, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 465
    .restart local v7       #normalizedNumber:Ljava/lang/String;
    new-instance v15, Lmiui/provider/yellowpage/model/YellowPagePhone;

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, p1

    move-object/from16 v21, v7

    move/from16 v23, v9

    invoke-direct/range {v15 .. v27}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    .line 467
    .local v15, phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    if-eqz v30, :cond_5

    const/4 v1, 0x3

    move/from16 v0, v22

    if-ne v0, v1, :cond_4

    .line 468
    :cond_5
    move-object/from16 v30, v15

    .line 469
    const/4 v1, 0x3

    move/from16 v0, v22

    if-ne v0, v1, :cond_4

    .line 470
    const-string v1, "YellowPageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is a local antispam user marked"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 479
    .end local v7           #normalizedNumber:Ljava/lang/String;
    .end local v9           #providerId:I
    .end local v15           #phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    .end local v19           #cidName:Ljava/lang/String;
    .end local v22           #type:I
    .end local v24           #markedCount:I
    :cond_6
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v30

    .line 475
    goto/16 :goto_2

    .line 437
    .end local v30           #ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :catchall_0
    move-exception v1

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    throw v1

    .line 460
    .restart local v9       #providerId:I
    .restart local v19       #cidName:Ljava/lang/String;
    .restart local v30       #ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :cond_7
    const/16 v22, 0x2

    goto :goto_3

    .line 476
    .end local v9           #providerId:I
    .end local v19           #cidName:Ljava/lang/String;
    :catch_1
    move-exception v29

    .line 477
    .restart local v29       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 479
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 482
    .end local v29           #e:Ljava/lang/Exception;
    .end local v30           #ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 479
    .restart local v30       #ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :catchall_1
    move-exception v1

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;
    .locals 26
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/provider/yellowpage/model/YellowPagePhone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/provider/yellowpage/YellowPageUtils;->isYellowPageAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 314
    :cond_0
    const/16 v23, 0x0

    .line 381
    :cond_1
    return-object v23

    .line 317
    :cond_2
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v20, norNumbersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v23, resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v0, v18

    if-ge v0, v9, :cond_a

    .line 320
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 321
    .local v22, number:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, normalizedNumber:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v7, v22

    .line 319
    .end local v22           #number:Ljava/lang/String;
    .local v7, number:Ljava/lang/String;
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 326
    .end local v7           #number:Ljava/lang/String;
    .restart local v22       #number:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v9

    const/16 v11, 0x32

    if-gt v9, v11, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move/from16 v0, v18

    if-ne v0, v9, :cond_c

    .line 331
    :cond_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v24, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 334
    .local v21, num:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 335
    const-string v9, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_5
    const-string v9, "\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 340
    .end local v21           #num:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lmiui/provider/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "normalized_number IN ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 343
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_c

    move-object/from16 v7, v22

    .line 345
    .end local v22           #number:Ljava/lang/String;
    .restart local v7       #number:Ljava/lang/String;
    :goto_3
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 346
    const/16 v9, 0xa

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 347
    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 348
    .local v10, providerId:I
    const/4 v9, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, tag:Ljava/lang/String;
    const/4 v9, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, ypName:Ljava/lang/String;
    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 351
    .local v3, ypId:J
    const/4 v9, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 352
    .local v13, ypNamePinyin:Ljava/lang/String;
    const/4 v9, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 353
    .local v14, tagPinyin:Ljava/lang/String;
    const/16 v9, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-nez v9, :cond_7

    const/4 v12, 0x1

    .line 354
    .local v12, isVisible:Z
    :goto_4
    const/16 v9, 0xb

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_8

    const/4 v15, 0x1

    .line 355
    .local v15, suspect:Z
    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 356
    new-instance v2, Lmiui/provider/yellowpage/model/YellowPagePhone;

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v15}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 359
    .local v2, ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v9, "YellowPageUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getLocalYellowPagePhones: Number "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " has yp phone "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lmiui/provider/yellowpage/model/YellowPagePhone;->getYellowPageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 364
    .end local v2           #ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    .end local v3           #ypId:J
    .end local v5           #ypName:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    .end local v10           #providerId:I
    .end local v12           #isVisible:Z
    .end local v13           #ypNamePinyin:Ljava/lang/String;
    .end local v14           #tagPinyin:Ljava/lang/String;
    .end local v15           #suspect:Z
    :catch_0
    move-exception v17

    .line 365
    .local v17, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    .end local v17           #e:Ljava/lang/Exception;
    :goto_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 353
    .restart local v3       #ypId:J
    .restart local v5       #ypName:Ljava/lang/String;
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v10       #providerId:I
    .restart local v13       #ypNamePinyin:Ljava/lang/String;
    .restart local v14       #tagPinyin:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 354
    .restart local v12       #isVisible:Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_5

    .line 363
    .end local v3           #ypId:J
    .end local v5           #ypName:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    .end local v10           #providerId:I
    .end local v12           #isVisible:Z
    .end local v13           #ypNamePinyin:Ljava/lang/String;
    .end local v14           #tagPinyin:Ljava/lang/String;
    :cond_9
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 367
    :catchall_0
    move-exception v9

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v9

    .line 374
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #normalizedNumber:Ljava/lang/String;
    .end local v16           #c:Landroid/database/Cursor;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v24           #sb:Ljava/lang/StringBuilder;
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 375
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_b
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 376
    .restart local v7       #number:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 377
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v9, v11}, Lmiui/provider/yellowpage/YellowPageUtils;->updatePhoneUsageStatus(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_7

    .end local v7           #number:Ljava/lang/String;
    .end local v19           #i$:Ljava/util/Iterator;
    .restart local v8       #normalizedNumber:Ljava/lang/String;
    .restart local v22       #number:Ljava/lang/String;
    :cond_c
    move-object/from16 v7, v22

    .end local v22           #number:Ljava/lang/String;
    .restart local v7       #number:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public static getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/provider/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "defaultCountryCode"

    .prologue
    const/4 v4, 0x1

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    const/4 v0, 0x0

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, normalizedNumber:Ljava/lang/String;
    invoke-static {v0}, Lmiui/provider/yellowpage/YellowPageUtils;->isAreaPhoneWithoutAreaCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    invoke-static {p0}, Lmiui/provider/yellowpage/YellowPageUtils;->getUserAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, userAreaCode:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+86"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    .end local v2           #userAreaCode:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 189
    .local v1, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 190
    invoke-virtual {v1, p2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->setDefaultCountryCode(Ljava/lang/String;)V

    .line 192
    :cond_3
    invoke-virtual {v1, v4, v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lmiui/provider/yellowpage/YellowPageUtils;->isLocalServiceNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+86"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_4
    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    goto :goto_0
.end method

.method public static getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/provider/yellowpage/model/YellowPagePhone;
    .locals 4
    .parameter "context"
    .parameter "number"
    .parameter "fetchRemote"

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lmiui/provider/yellowpage/YellowPageUtils;->isYellowPageAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 302
    :cond_1
    :goto_0
    return-object v1

    .line 285
    :cond_2
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->getLocalPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;

    move-result-object v1

    .line 286
    .local v1, phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    if-nez v1, :cond_1

    .line 291
    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v2}, Lmiui/provider/yellowpage/YellowPageUtils;->updatePhoneUsageStatus(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 292
    if-eqz p2, :cond_1

    .line 294
    :try_start_0
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->getCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;

    move-result-object v1

    .line 296
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/yellowpage/YellowPageUtils;->updatePhoneUsageStatus(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProvider(Landroid/content/Context;I)Lmiui/provider/yellowpage/model/Provider;
    .locals 15
    .parameter "context"
    .parameter "pid"

    .prologue
    .line 491
    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/provider/yellowpage/model/Provider;

    .line 531
    :goto_0
    return-object v0

    .line 495
    :cond_0
    const/4 v12, 0x0

    .line 496
    .local v12, provider:Lmiui/provider/yellowpage/model/Provider;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "icon"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "pid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "icon_big"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 505
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    move-object v13, v12

    .line 507
    .end local v12           #provider:Lmiui/provider/yellowpage/model/Provider;
    .local v13, provider:Lmiui/provider/yellowpage/model/Provider;
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 509
    .local v11, name:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 510
    .local v10, iconByte:[B
    if-nez v10, :cond_1

    const/4 v8, 0x0

    .line 512
    .local v8, icon:Landroid/graphics/Bitmap;
    :goto_2
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 513
    if-nez v10, :cond_2

    const/4 v9, 0x0

    .line 515
    .local v9, iconBig:Landroid/graphics/Bitmap;
    :goto_3
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 516
    .local v14, providerId:I
    new-instance v12, Lmiui/provider/yellowpage/model/Provider;

    invoke-direct {v12, v14, v11, v8, v9}, Lmiui/provider/yellowpage/model/Provider;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v13           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v12       #provider:Lmiui/provider/yellowpage/model/Provider;
    :try_start_1
    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v12

    .line 518
    .end local v12           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v13       #provider:Lmiui/provider/yellowpage/model/Provider;
    goto :goto_1

    .line 510
    .end local v8           #icon:Landroid/graphics/Bitmap;
    .end local v9           #iconBig:Landroid/graphics/Bitmap;
    .end local v14           #providerId:I
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    array-length v1, v10

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    .line 513
    .restart local v8       #icon:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v0, 0x0

    array-length v1, v10

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto :goto_3

    .line 522
    .end local v8           #icon:Landroid/graphics/Bitmap;
    .end local v10           #iconByte:[B
    .end local v11           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v12, v13

    .line 526
    .end local v13           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v12       #provider:Lmiui/provider/yellowpage/model/Provider;
    :cond_4
    :goto_4
    sget-object v0, Lmiui/provider/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #provider:Lmiui/provider/yellowpage/model/Provider;
    check-cast v12, Lmiui/provider/yellowpage/model/Provider;

    .line 527
    .restart local v12       #provider:Lmiui/provider/yellowpage/model/Provider;
    if-nez v12, :cond_5

    .line 529
    sget-object v12, Lmiui/provider/yellowpage/model/Provider;->DEFAULT_PROVIDER:Lmiui/provider/yellowpage/model/Provider;

    :cond_5
    move-object v0, v12

    .line 531
    goto :goto_0

    .line 519
    .end local v12           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v13       #provider:Lmiui/provider/yellowpage/model/Provider;
    :catch_0
    move-exception v7

    move-object v12, v13

    .line 520
    .end local v13           #provider:Lmiui/provider/yellowpage/model/Provider;
    .local v7, e:Ljava/lang/Exception;
    .restart local v12       #provider:Lmiui/provider/yellowpage/model/Provider;
    :goto_5
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 522
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v7           #e:Ljava/lang/Exception;
    .end local v12           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v13       #provider:Lmiui/provider/yellowpage/model/Provider;
    :catchall_0
    move-exception v0

    move-object v12, v13

    .end local v13           #provider:Lmiui/provider/yellowpage/model/Provider;
    .restart local v12       #provider:Lmiui/provider/yellowpage/model/Provider;
    :goto_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 519
    .restart local v8       #icon:Landroid/graphics/Bitmap;
    .restart local v9       #iconBig:Landroid/graphics/Bitmap;
    .restart local v10       #iconByte:[B
    .restart local v11       #name:Ljava/lang/String;
    .restart local v14       #providerId:I
    :catch_1
    move-exception v7

    goto :goto_5
.end method

.method public static getUserAreaCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$UserArea;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 117
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 123
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_1
    return-object v2

    .line 120
    :catch_0
    move-exception v7

    .line 121
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getYellowPageType(II)I
    .locals 1
    .parameter "hot"
    .parameter "builtin"

    .prologue
    const/4 v0, 0x1

    .line 104
    if-ne p1, v0, :cond_0

    if-ne p0, v0, :cond_0

    .line 109
    :goto_0
    return v0

    .line 106
    :cond_0
    if-ne p1, v0, :cond_1

    if-nez p0, :cond_1

    .line 107
    const/4 v0, 0x2

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static isAreaPhoneWithoutAreaCode(Ljava/lang/String;)Z
    .locals 6
    .parameter "normalizedNumber"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    :goto_0
    return v3

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 139
    .local v1, withoutAreaCode:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 140
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 142
    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 143
    :cond_1
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isSmsPrefix()Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    .line 154
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .end local v0           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_3
    move v3, v1

    .line 156
    goto :goto_0

    .restart local v0       #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_4
    move v1, v3

    .line 143
    goto :goto_1

    .line 147
    :cond_5
    invoke-virtual {v0, v2, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {p0}, Lmiui/provider/yellowpage/YellowPageUtils;->isLocalServiceNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 741
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 769
    :goto_0
    return v0

    .line 745
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 748
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 750
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 751
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 758
    .local v6, antispamNumber:Ljava/lang/String;
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "106"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 760
    goto :goto_0

    .line 763
    .end local v6           #antispamNumber:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 764
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v9

    .line 769
    goto :goto_0

    .line 766
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isLocalServiceNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_0
    const-string v0, "96"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isRemindIgnoredUserSuspectNumber(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 831
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "yellow_page_ignore_remind_user_suspect_number"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isYellowPageAvailable()Z
    .locals 2

    .prologue
    .line 720
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 721
    .local v0, locale:Ljava/util/Locale;
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isYellowPageEnable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 731
    invoke-static {}, Lmiui/provider/yellowpage/YellowPageUtils;->isYellowPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/provider/ExtraSettings$System;->isCloudAntispamEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static markAntiSpam(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "categoryId"
    .parameter "delete"

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type = 3"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 601
    if-nez p3, :cond_0

    .line 602
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 603
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v1, "normalized_number"

    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v1, "cid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    const-string v1, "type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    const-string v1, "pid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 610
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v1, Lmiui/provider/yellowpage/YellowPageUtils$1;

    invoke-direct {v1, p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lmiui/provider/yellowpage/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 616
    return-void
.end method

.method public static updateCallLogAntispamTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 781
    .local v11, selection:Ljava/lang/StringBuilder;
    const-string v0, "PHONE_NUMBERS_EQUAL(number,"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    const-string v0, ",0)"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "normalized_number"

    aput-object v3, v2, v13

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 790
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 791
    new-instance v6, Lmiui/provider/BatchOperation;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_log"

    invoke-direct {v6, v0, v1}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 793
    .local v6, batchOperations:Lmiui/provider/BatchOperation;
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->getLocalPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;

    move-result-object v10

    .line 795
    .local v10, phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 796
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 797
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "normalized_number"

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    if-eqz v10, :cond_4

    .line 799
    const-string v0, "cloud_antispam_type"

    invoke-virtual {v10}, Lmiui/provider/yellowpage/model/YellowPagePhone;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 800
    const-string v0, "cloud_antispam_type_tag"

    invoke-virtual {v10}, Lmiui/provider/yellowpage/model/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :goto_2
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 808
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 809
    const-string v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 812
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 814
    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 815
    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 822
    .end local v7           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 823
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 802
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    const-string v0, "cloud_antispam_type"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 803
    const-string v0, "cloud_antispam_type_tag"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 825
    .end local v12           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 819
    :cond_5
    :try_start_3
    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 820
    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method private static updatePhoneUsageStatus(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"
    .parameter "queried"
    .parameter "action"

    .prologue
    .line 393
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v3, "query_status"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    const-string v2, "action"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/yellowpage/YellowPageContract$PhoneUsage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 395
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 398
    .end local v1           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
