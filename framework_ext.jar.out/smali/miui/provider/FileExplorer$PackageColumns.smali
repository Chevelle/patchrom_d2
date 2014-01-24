.class public interface abstract Lmiui/provider/FileExplorer$PackageColumns;
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
    name = "PackageColumns"
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETE_CACHE:Ljava/lang/String; = "delete_cache"

.field public static final NAME:Ljava/lang/String; = "name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "content://miui.fileexplorer/packages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/FileExplorer$PackageColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
