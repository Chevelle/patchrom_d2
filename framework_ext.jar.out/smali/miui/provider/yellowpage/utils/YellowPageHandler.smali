.class public Lmiui/provider/yellowpage/utils/YellowPageHandler;
.super Ljava/lang/Object;
.source "YellowPageHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteYellowPage(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "yid"

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "yid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public static insertYellowPage(Landroid/content/Context;Lmiui/provider/yellowpage/model/YellowPage;)V
    .locals 8
    .parameter "context"
    .parameter "yellowPage"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 23
    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/YellowPage;->isHot()Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v5

    .line 24
    .local v1, hot:I
    :goto_0
    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/YellowPage;->isPreset()Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v5

    .line 26
    .local v0, builtIn:I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 28
    .local v2, time:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "yid"

    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/YellowPage;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    const-string v5, "content"

    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/YellowPage;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v5, "hotCatId"

    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/YellowPage;->getHotCatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v5, "hotSort"

    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/YellowPage;->getHotSort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    const-string v5, "type"

    invoke-static {v1, v0}, Lmiui/provider/yellowpage/YellowPageUtils;->getYellowPageType(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    const-string v5, "update_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lmiui/provider/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 38
    return-void

    .end local v0           #builtIn:I
    .end local v1           #hot:I
    .end local v2           #time:J
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    move v1, v6

    .line 23
    goto :goto_0

    .restart local v1       #hot:I
    :cond_1
    move v0, v6

    .line 24
    goto :goto_1
.end method
