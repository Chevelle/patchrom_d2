.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$Location;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Location"
.end annotation


# static fields
.field public static final CONTENT_CACHED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_CURRENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIRECTORY:Ljava/lang/String; = "cached_location"

.field public static final DIRECTORY_CACHED:Ljava/lang/String; = "cached_location"

.field public static final DIRECTORY_CURRENT:Ljava/lang/String; = "current_location"

.field public static final LOCATION_ID:Ljava/lang/String; = "location_id"

.field public static final LOCATION_NAME:Ljava/lang/String; = "location_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 444
    const-string v0, "content://miui.yellowpage/current_location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Location;->CONTENT_CURRENT_URI:Landroid/net/Uri;

    .line 445
    const-string v0, "content://miui.yellowpage/cached_location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Location;->CONTENT_CACHED_URI:Landroid/net/Uri;

    .line 446
    const-string v0, "content://miui.yellowpage/cached_location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Location;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
