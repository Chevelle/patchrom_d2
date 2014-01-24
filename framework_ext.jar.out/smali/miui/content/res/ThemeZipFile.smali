.class public final Lmiui/content/res/ThemeZipFile;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;,
        Lmiui/content/res/ThemeZipFile$MyZipFile;
    }
.end annotation


# static fields
.field static DBG:Z = false

.field private static final FUZZY_SEARCH_ICON_SUFFIX:Ljava/lang/String; = "#*.png"

.field static TAG:Ljava/lang/String; = null

.field public static final THEME_VALUE_FILE:Ljava/lang/String; = "theme_values.xml"

.field public static final THEME_VALUE_FILE_NAME:Ljava/lang/String; = "theme_values"

.field public static final THEME_VALUE_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final sDensity:I

.field private static final sFallbackDensities:[I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/content/res/ThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mLastModifiedTime:J

.field private mMetaData:Lmiui/content/res/ThemeResources$MetaData;

.field private mPath:Ljava/lang/String;

.field private mUpatedTime:J

.field private mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lmiui/content/res/ThemeResources;->DBG:Z

    sput-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    .line 31
    const-string v0, "ThemeZipFile"

    sput-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    .line 33
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lmiui/content/res/ThemeZipFile;->sDensity:I

    .line 34
    sget v0, Lmiui/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v0}, Lmiui/content/res/ThemeDensityFallbackUtils;->getFallbackOrder(I)[I

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sFallbackDensities:[I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 3
    .parameter "zipFilePath"
    .parameter "metaData"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    .line 69
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create ThemeZipFile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iput-object p1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    .line 72
    return-void
.end method

.method private clean()V
    .locals 3

    .prologue
    .line 238
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    if-eqz v0, :cond_1

    .line 242
    :try_start_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    .line 247
    :cond_1
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 11
    .parameter "info"
    .parameter "path"

    .prologue
    const/16 v8, 0xa0

    const/4 v6, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 127
    iget v9, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-nez v9, :cond_1

    :goto_0
    iput v8, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    .line 128
    const/4 v6, 0x1

    .line 155
    :cond_0
    :goto_1
    return v6

    .line 127
    :cond_1
    iget v8, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    goto :goto_0

    .line 131
    :cond_2
    const-string v9, "dpi/"

    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 132
    .local v7, suffixIndex:I
    if-lez v7, :cond_0

    .line 133
    add-int/lit8 v7, v7, 0x3

    .line 135
    add-int/lit8 v5, v7, -0x3

    .line 136
    .local v5, prefixLength:I
    :goto_2
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_3

    if-lez v5, :cond_3

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 137
    :cond_3
    if-lez v5, :cond_0

    .line 139
    invoke-static {}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;

    move-result-object v1

    .line 140
    .local v1, buffer:Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;
    invoke-virtual {v1, p2, v5}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, result:Z
    sget-object v0, Lmiui/content/res/ThemeZipFile;->sFallbackDensities:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_6

    aget v2, v0, v3

    .line 143
    .local v2, density:I
    iget v9, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-ne v2, v9, :cond_5

    .line 142
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 145
    :cond_5
    invoke-virtual {v1, v5}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->setLength(I)V

    .line 146
    invoke-static {v2}, Lmiui/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, p2, v7, v9}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 148
    invoke-virtual {v1}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 149
    if-nez v2, :cond_7

    :goto_4
    iput v8, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    .line 150
    const/4 v6, 0x1

    .line 154
    .end local v2           #density:I
    :cond_6
    invoke-static {v1}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;)V

    goto :goto_1

    .restart local v2       #density:I
    :cond_7
    move v8, v2

    .line 149
    goto :goto_4
.end method

.method protected static getThemeZipFile(Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile;
    .locals 9
    .parameter "metaData"
    .parameter "componentName"

    .prologue
    const/4 v7, 0x0

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, path:Ljava/lang/String;
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 47
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/content/res/ThemeZipFile;

    move-object v4, v6

    .line 48
    .local v4, zipFile:Lmiui/content/res/ThemeZipFile;
    :goto_0
    if-nez v4, :cond_1

    .line 49
    sget-object v8, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    monitor-enter v8

    .line 50
    :try_start_0
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v0

    .line 51
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/content/res/ThemeZipFile;

    move-object v4, v6

    .line 52
    :goto_1
    if-nez v4, :cond_0

    .line 53
    new-instance v5, Lmiui/content/res/ThemeZipFile;

    invoke-direct {v5, v1, p0}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v4           #zipFile:Lmiui/content/res/ThemeZipFile;
    .local v5, zipFile:Lmiui/content/res/ThemeZipFile;
    :try_start_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    :try_start_2
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v5

    .local v4, zipFile:Ljava/lang/Object;
    move-object v2, v3

    .line 57
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .end local v4           #zipFile:Ljava/lang/Object;
    .end local v5           #zipFile:Lmiui/content/res/ThemeZipFile;
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    :cond_0
    :try_start_3
    monitor-exit v8

    .line 59
    :cond_1
    return-object v4

    :cond_2
    move-object v4, v7

    .line 47
    goto :goto_0

    .local v4, zipFile:Lmiui/content/res/ThemeZipFile;
    :cond_3
    move-object v4, v7

    .line 51
    goto :goto_1

    .line 57
    .end local v4           #zipFile:Lmiui/content/res/ThemeZipFile;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .restart local v5       #zipFile:Lmiui/content/res/ThemeZipFile;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .local v4, zipFile:Ljava/lang/Object;
    goto :goto_2

    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .end local v4           #zipFile:Ljava/lang/Object;
    .restart local v3       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    :catchall_2
    move-exception v6

    move-object v4, v5

    .restart local v4       #zipFile:Ljava/lang/Object;
    move-object v2, v3

    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    goto :goto_2
.end method

.method private getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 10
    .parameter "info"
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, entry:Ljava/util/zip/ZipEntry;
    :try_start_0
    const-string v6, "#*.png"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 200
    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "#*.png"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, fuzzyIconName:Ljava/lang/String;
    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v6}, Lmiui/content/res/ThemeZipFile$MyZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 203
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 204
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 205
    .local v3, enumEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 208
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    move-object v2, v3

    .line 217
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v3           #enumEntry:Ljava/util/zip/ZipEntry;
    .end local v4           #fuzzyIconName:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 218
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    iput-wide v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J

    .line 219
    iget-boolean v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    if-eqz v6, :cond_4

    .line 220
    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v6, v2}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 221
    iget-object v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    if-nez v6, :cond_4

    .line 228
    :cond_2
    :goto_1
    return v5

    .line 214
    :cond_3
    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v6, p2}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    goto :goto_0

    .line 223
    :cond_4
    iget-wide v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadThemeValuesInner(Lmiui/content/res/ThemeResources$LoadThemeValuesCallback;Ljava/lang/String;)V
    .locals 1
    .parameter "callback"
    .parameter "path"

    .prologue
    .line 175
    invoke-virtual {p0, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 176
    .local v0, input:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {p1, v0}, Lmiui/content/res/ThemeResources$LoadThemeValuesCallback;->load(Ljava/io/InputStream;)V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public checkUpdate()J
    .locals 8

    .prologue
    .line 75
    sget-boolean v4, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUpdate for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 79
    .local v2, lastModified:J
    iget-wide v4, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v4, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/content/res/ThemeZipFile;->mUpatedTime:J

    .line 83
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 85
    iput-wide v2, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    .line 86
    iget-wide v4, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 87
    sget-boolean v4, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openZipFile for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    :try_start_1
    new-instance v4, Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-direct {v4, p0, v1}, Lmiui/content/res/ThemeZipFile$MyZipFile;-><init>(Lmiui/content/res/ThemeZipFile;Ljava/io/File;)V

    iput-object v4, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :cond_3
    iget-wide v4, p0, Lmiui/content/res/ThemeZipFile;->mUpatedTime:J

    return-wide v4

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 234
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 235
    return-void
.end method

.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 106
    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v3, v3, Lmiui/content/res/ThemeResources$MetaData;->mSupportFile:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 122
    :goto_0
    return v2

    .line 108
    :cond_1
    invoke-static {}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;

    move-result-object v0

    .line 109
    .local v0, buffer:Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 112
    :cond_2
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, path:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    .line 116
    .local v2, result:Z
    if-nez v2, :cond_3

    const-string v3, ".9.png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    const-string v3, "9.png"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->move(I)V

    .line 118
    const-string v3, "png"

    invoke-virtual {v0, v3}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    .line 121
    :cond_3
    invoke-static {v0}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;)V

    goto :goto_0
.end method

.method public getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-object v2

    .line 184
    :cond_1
    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 185
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v3, v1}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadThemeValues(Lmiui/content/res/ThemeResources$LoadThemeValuesCallback;Ljava/lang/String;)V
    .locals 2
    .parameter "callback"
    .parameter "basePath"

    .prologue
    .line 159
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;

    move-result-object v0

    .line 162
    .local v0, buffer:Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;
    invoke-virtual {v0, p2}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->assign(Ljava/lang/String;)V

    .line 163
    const-string v1, "theme_values"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 164
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lmiui/content/res/ThemeZipFile;->loadThemeValuesInner(Lmiui/content/res/ThemeResources$LoadThemeValuesCallback;Ljava/lang/String;)V

    .line 167
    const-string v1, ".xml"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->move(I)V

    .line 168
    sget v1, Lmiui/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v1}, Lmiui/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 169
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lmiui/content/res/ThemeZipFile;->loadThemeValuesInner(Lmiui/content/res/ThemeResources$LoadThemeValuesCallback;Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;)V

    goto :goto_0
.end method
