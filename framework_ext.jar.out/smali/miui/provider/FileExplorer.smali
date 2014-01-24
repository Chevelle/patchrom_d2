.class public Lmiui/provider/FileExplorer;
.super Ljava/lang/Object;
.source "FileExplorer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/FileExplorer$WhiteListColumns;,
        Lmiui/provider/FileExplorer$TempDirColumns;,
        Lmiui/provider/FileExplorer$PackagePathColumns;,
        Lmiui/provider/FileExplorer$PackageNameColumns;,
        Lmiui/provider/FileExplorer$PackageDataColumn;,
        Lmiui/provider/FileExplorer$PackageColumns;,
        Lmiui/provider/FileExplorer$AppColumns;,
        Lmiui/provider/FileExplorer$Constant;,
        Lmiui/provider/FileExplorer$PackagePathQuery;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "miui.fileexplorer"

.field private static final BASE_URI_STRING:Ljava/lang/String; = "content://miui.fileexplorer"

.field public static final CONTENT_PACKAGE_PATH_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "content://miui.fileexplorer/package_paths"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/FileExplorer;->CONTENT_PACKAGE_PATH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method
