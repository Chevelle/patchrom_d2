.class Lmiui/content/res/ThemeZipFile$MyZipFile;
.super Ljava/util/zip/ZipFile;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyZipFile"
.end annotation


# instance fields
.field mEntryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/content/res/ThemeZipFile;


# direct methods
.method public constructor <init>(Lmiui/content/res/ThemeZipFile;Ljava/io/File;)V
    .locals 4
    .parameter
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iput-object p1, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->this$0:Lmiui/content/res/ThemeZipFile;

    .line 256
    invoke-direct {p0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 258
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    .line 259
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 260
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 262
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 266
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 1
    .parameter "entryName"

    .prologue
    .line 269
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    return-object v0
.end method
