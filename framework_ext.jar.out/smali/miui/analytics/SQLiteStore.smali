.class Lmiui/analytics/SQLiteStore;
.super Ljava/lang/Object;
.source "SQLiteStore.java"

# interfaces
.implements Lmiui/analytics/Storable;


# static fields
.field private static final INSERT_ITEM:Ljava/lang/String; = "insert into %s values(null, ?, ?, ?, ?, ?)"

.field private static final QUERY_ITEMS:Ljava/lang/String; = "select * from analytics "

.field private static final TABLE_NAME:Ljava/lang/String; = "analytics"

.field public static final TAG:Ljava/lang/String; = "ANALYTICS.SQLITESTORE"

.field private static final VERSION:I = 0x2


# instance fields
.field private mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/analytics/SQLiteStore;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lmiui/analytics/SQLiteStore;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 29
    :cond_0
    return-void
.end method

.method public create(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "databaseName"

    .prologue
    .line 22
    new-instance v0, Lmiui/analytics/AnalyticsDatabaseHelper;

    const-string v1, "analytics"

    const/4 v2, 0x2

    invoke-direct {v0, p1, p2, v1, v2}, Lmiui/analytics/AnalyticsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/analytics/SQLiteStore;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 23
    return-void
.end method

.method public readDataset(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "selection"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lmiui/analytics/SQLiteStore;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v4, :cond_1

    .line 51
    const-string v3, "select * from analytics "

    .line 52
    .local v3, query:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 53
    const-string v4, "%s where %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "select * from analytics "

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 57
    :cond_0
    :try_start_0
    iget-object v4, p0, Lmiui/analytics/SQLiteStore;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 58
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_1

    .line 59
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #query:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 61
    .restart local v3       #query:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 63
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "ANALYTICS.SQLITESTORE"

    const-string v5, "can\'t read database:%s"

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lmiui/analytics/SQLiteStore;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeData(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "type"
    .parameter "id"
    .parameter "param"
    .parameter "trackTime"
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 33
    iget-object v2, p0, Lmiui/analytics/SQLiteStore;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v2, :cond_0

    .line 35
    :try_start_0
    iget-object v2, p0, Lmiui/analytics/SQLiteStore;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 36
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 37
    const-string v2, "insert into %s values(null, ?, ?, ?, ?, ?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "analytics"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 41
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "ANALYTICS.SQLITESTORE"

    const-string v3, "database:%s is not writable!"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lmiui/analytics/SQLiteStore;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
