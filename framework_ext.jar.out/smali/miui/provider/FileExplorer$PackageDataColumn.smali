.class public interface abstract Lmiui/provider/FileExplorer$PackageDataColumn;
.super Ljava/lang/Object;
.source "FileExplorer.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/FileExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageDataColumn"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final DATA4:Ljava/lang/String; = "data4"

.field public static final DATA5:Ljava/lang/String; = "data5"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final PACKAGE_ID:Ljava/lang/String; = "package_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "content://miui.fileexplorer/package_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/FileExplorer$PackageDataColumn;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
