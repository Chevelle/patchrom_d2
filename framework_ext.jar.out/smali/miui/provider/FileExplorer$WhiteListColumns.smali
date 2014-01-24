.class public interface abstract Lmiui/provider/FileExplorer$WhiteListColumns;
.super Ljava/lang/Object;
.source "FileExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/FileExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WhiteListColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final NAMES:Ljava/lang/String; = "names"

.field public static final PATH:Ljava/lang/String; = "path"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-string v0, "content://miui.fileexplorer/white_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/FileExplorer$WhiteListColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
