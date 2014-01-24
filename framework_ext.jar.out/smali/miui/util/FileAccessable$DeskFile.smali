.class public Lmiui/util/FileAccessable$DeskFile;
.super Lmiui/util/FileAccessable$AbstractFileAccessable;
.source "FileAccessable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeskFile"
.end annotation


# instance fields
.field mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "subpath"

    .prologue
    .line 91
    invoke-direct {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;-><init>()V

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 99
    invoke-direct {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;-><init>()V

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "subpath"

    .prologue
    .line 95
    invoke-direct {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;-><init>()V

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    .line 97
    return-void
.end method


# virtual methods
.method public createByExtension(Ljava/lang/String;)Lmiui/util/FileAccessable;
    .locals 3
    .parameter "extensionName"

    .prologue
    .line 164
    new-instance v0, Lmiui/util/FileAccessable$DeskFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/util/FileAccessable$DeskFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;
    .locals 2
    .parameter "subpath"

    .prologue
    .line 159
    new-instance v0, Lmiui/util/FileAccessable$DeskFile;

    iget-object v1, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/util/FileAccessable$DeskFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 144
    if-eqz p1, :cond_0

    instance-of v2, p1, Lmiui/util/FileAccessable$DeskFile;

    if-nez v2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 146
    check-cast v0, Lmiui/util/FileAccessable$DeskFile;

    .line 147
    .local v0, target:Lmiui/util/FileAccessable$DeskFile;
    iget-object v2, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    iget-object v3, v0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 130
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 133
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 8
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
    .line 119
    iget-object v6, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, files:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v5, returnList:Ljava/util/List;,"Ljava/util/List<Lmiui/util/FileAccessable;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 122
    .local v1, file:Ljava/lang/String;
    new-instance v6, Lmiui/util/FileAccessable$DeskFile;

    iget-object v7, p0, Lmiui/util/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-direct {v6, v7, v1}, Lmiui/util/FileAccessable$DeskFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v1           #file:Ljava/lang/String;
    :cond_0
    return-object v5
.end method
