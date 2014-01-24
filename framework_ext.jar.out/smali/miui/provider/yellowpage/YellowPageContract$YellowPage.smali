.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$YellowPage;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "YellowPage"
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIRECTORY:Ljava/lang/String; = "yellow_page"

.field public static final FAVORITE:Ljava/lang/String; = "favorite"

.field public static final HOT_CATEGORY_ID:Ljava/lang/String; = "hotCatId"

.field public static final HOT_SORT:Ljava/lang/String; = "hotSort"

.field public static final LAST_USE_TIME:Ljava/lang/String; = "last_use_time"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_CLOUD:I = 0x3

.field public static final TYPE_FREQUENT:I = 0x1

.field public static final TYPE_NORMAL:I = 0x2

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final VERSION_KEY:Ljava/lang/String; = "yellow_page_v2"

.field public static final YID:Ljava/lang/String; = "yid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://miui.yellowpage/yellow_page"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
