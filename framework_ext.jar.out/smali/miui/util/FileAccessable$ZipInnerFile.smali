.class public Lmiui/util/FileAccessable$ZipInnerFile;
.super Lmiui/util/FileAccessable$AbstractFileAccessable;
.source "FileAccessable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipInnerFile"
.end annotation


# instance fields
.field mEntryName:Ljava/lang/String;

.field mExists:Z

.field mIsFolder:Z

.field mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 0
    .parameter "zipFile"
    .parameter "entryName"

    .prologue
    .line 175
    invoke-direct {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;-><init>()V

    .line 176
    invoke-direct {p0, p1, p2}, Lmiui/util/FileAccessable$ZipInnerFile;->init(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private init(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 7
    .parameter "zipFile"
    .parameter "entryName"

    .prologue
    const/4 v6, 0x1

    .line 180
    iput-object p1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 181
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    .line 183
    iget-object v4, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_2

    .line 205
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v4, p2

    .line 181
    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 188
    .local v3, zipEntry:Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_5

    .line 189
    move-object v2, p2

    .line 190
    .local v2, folder:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    :cond_3
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 193
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 195
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 196
    iput-boolean v6, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    .line 197
    iput-boolean v6, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    goto :goto_1

    .line 202
    .end local v0           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #folder:Ljava/lang/String;
    :cond_5
    iput-boolean v6, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    .line 203
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    iput-boolean v4, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    goto :goto_1
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 282
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    .line 283
    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public createByExtension(Ljava/lang/String;)Lmiui/util/FileAccessable;
    .locals 4
    .parameter "extensionName"

    .prologue
    .line 294
    new-instance v0, Lmiui/util/FileAccessable$ZipInnerFile;

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;
    .locals 4
    .parameter "subpath"

    .prologue
    .line 289
    new-instance v0, Lmiui/util/FileAccessable$ZipInnerFile;

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 266
    if-eqz p1, :cond_0

    instance-of v2, p1, Lmiui/util/FileAccessable$ZipInnerFile;

    if-nez v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 268
    check-cast v0, Lmiui/util/FileAccessable$ZipInnerFile;

    .line 269
    .local v0, target:Lmiui/util/FileAccessable$ZipInnerFile;
    iget-object v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v3, v0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-static {v2, v3}, Lmiui/util/FileAccessable$ZipInnerFile;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    iget-object v3, v0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/util/FileAccessable$ZipInnerFile;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-boolean v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    if-eqz v3, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v2

    .line 249
    :cond_1
    iget-object v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 251
    .local v1, zipEntry:Ljava/util/zip/ZipEntry;
    :try_start_0
    iget-object v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 261
    .local v0, separatorIndex:I
    if-gez v0, :cond_0

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 278
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public list()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/util/FileAccessable;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x2f

    .line 219
    iget-boolean v9, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    if-nez v9, :cond_2

    :cond_0
    const/4 v6, 0x0

    .line 243
    :cond_1
    return-object v6

    .line 221
    :cond_2
    iget-object v9, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 222
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v6, returnList:Ljava/util/List;,"Ljava/util/List<Lmiui/util/FileAccessable;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 225
    .local v7, setForQuickCheck:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 226
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, currEntryFolder:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 228
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v9, v10, :cond_3

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 229
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, subpath:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 232
    .local v4, index:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_4

    .line 233
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, folderName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    .end local v3           #folderName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 238
    new-instance v9, Lmiui/util/FileAccessable$ZipInnerFile;

    iget-object v10, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-direct {v9, v10, v5}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
