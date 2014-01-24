.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$Navigation;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Navigation"
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_BANNER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_BANNER_UPDATE:Landroid/net/Uri; = null

.field public static final CONTENT_URI_UPDATE:Landroid/net/Uri; = null

.field public static final DIRECTORY:Ljava/lang/String; = "navigation"

.field public static final DIRECTORY_BANNER:Ljava/lang/String; = "navigation_banner"

.field public static final DIRECTORY_BANNER_UPDATE:Ljava/lang/String; = "navigation_banner_update"

.field public static final DIRECTORY_UPDATE:Ljava/lang/String; = "navigation_update"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 388
    const-string v0, "content://miui.yellowpage/navigation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Navigation;->CONTENT_URI:Landroid/net/Uri;

    .line 389
    const-string v0, "content://miui.yellowpage/navigation_banner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Navigation;->CONTENT_BANNER_URI:Landroid/net/Uri;

    .line 394
    const-string v0, "content://miui.yellowpage/navigation_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Navigation;->CONTENT_URI_UPDATE:Landroid/net/Uri;

    .line 399
    const-string v0, "content://miui.yellowpage/navigation_banner_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Navigation;->CONTENT_URI_BANNER_UPDATE:Landroid/net/Uri;

    return-void
.end method
