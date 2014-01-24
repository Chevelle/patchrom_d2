.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$Search;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Search"
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_UPDATE_LOCATION_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIRECTORY:Ljava/lang/String; = "search"

.field public static final DIRECTORY_LOCATION_UPDATE:Ljava/lang/String; = "search_location_update"

.field public static final LOCAL_SEARCH_SUFFIX:Ljava/lang/String; = "/local"

.field public static final REMOTE_SEARCH_SUFFIX:Ljava/lang/String; = "/remote"

.field public static final RESULT_TYPE:Ljava/lang/String; = "type"

.field public static final RESULT_TYPE_SERVICE:I = 0x1

.field public static final RESULT_TYPE_YELLOW_PAGE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 414
    const-string v0, "content://miui.yellowpage/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Search;->CONTENT_URI:Landroid/net/Uri;

    .line 415
    const-string v0, "content://miui.yellowpage/search_location_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Search;->CONTENT_UPDATE_LOCATION_URI:Landroid/net/Uri;

    return-void
.end method
