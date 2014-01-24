.class public Landroid/app/MiuiDownloadManager$Query;
.super Landroid/app/DownloadManager$Query;
.source "MiuiDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/MiuiDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# instance fields
.field private mAppendedClause:Ljava/lang/String;

.field private mColumnAppData:Ljava/lang/String;

.field private mColumnNotificationPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/app/DownloadManager$Query;-><init>()V

    return-void
.end method


# virtual methods
.method addExtraSelectionParts(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, selectionParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    invoke-super {p0, p1}, Landroid/app/DownloadManager$Query;->addExtraSelectionParts(Ljava/util/List;)V

    .line 278
    iget-object v0, p0, Landroid/app/MiuiDownloadManager$Query;->mColumnAppData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    const-string v0, "%s=\'%s\'"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "entity"

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/app/MiuiDownloadManager$Query;->mColumnAppData:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/app/MiuiDownloadManager$Query;->mColumnNotificationPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    const-string v0, "%s=\'%s\'"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "notificationpackage"

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/app/MiuiDownloadManager$Query;->mColumnNotificationPackage:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_1
    iget-object v0, p0, Landroid/app/MiuiDownloadManager$Query;->mAppendedClause:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Landroid/app/MiuiDownloadManager$Query;->mAppendedClause:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_2
    return-void
.end method

.method public bridge synthetic orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Landroid/app/MiuiDownloadManager$Query;->orderBy(Ljava/lang/String;I)Landroid/app/MiuiDownloadManager$Query;

    move-result-object v0

    return-object v0
.end method

.method public orderBy(Ljava/lang/String;I)Landroid/app/MiuiDownloadManager$Query;
    .locals 3
    .parameter "column"
    .parameter "direction"

    .prologue
    .line 263
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Landroid/app/MiuiDownloadManager$Query;->setOrderByColumn(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p2}, Landroid/app/MiuiDownloadManager$Query;->setOrderDirection(I)V

    .line 272
    :goto_0
    return-object p0

    .line 271
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/DownloadManager$Query;->orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;

    goto :goto_0
.end method

.method public setFilterByAppData(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Query;
    .locals 0
    .parameter "appData"

    .prologue
    .line 230
    iput-object p1, p0, Landroid/app/MiuiDownloadManager$Query;->mColumnAppData:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public setFilterByAppendedClause(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Query;
    .locals 0
    .parameter "appendedClause"

    .prologue
    .line 249
    iput-object p1, p0, Landroid/app/MiuiDownloadManager$Query;->mAppendedClause:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public setFilterByNotificationPackage(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Query;
    .locals 0
    .parameter "notificationPackage"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/app/MiuiDownloadManager$Query;->mColumnNotificationPackage:Ljava/lang/String;

    .line 240
    return-object p0
.end method
