.class public interface abstract Lmiui/provider/FileExplorer$AppColumns;
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
    name = "AppColumns"
.end annotation


# static fields
.field public static final COMPANY:Ljava/lang/String; = "company"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ICON:Ljava/lang/String; = "icon"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "content://miui.fileexplorer/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/FileExplorer$AppColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
