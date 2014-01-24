.class public interface abstract Lmiui/provider/FileExplorer$TempDirColumns;
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
    name = "TempDirColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DELETED_OK:I = 0x1

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_SYSTEM:I = 0x1

.field public static final TYPE_USER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-string v0, "content://miui.fileexplorer/temp_folders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/FileExplorer$TempDirColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
