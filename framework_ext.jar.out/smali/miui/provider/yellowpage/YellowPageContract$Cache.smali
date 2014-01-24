.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$Cache;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cache"
.end annotation


# static fields
.field public static final CACHE_KEY:Ljava/lang/String; = "cache_key"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIRECTORY:Ljava/lang/String; = "cache"

.field public static final ETAG:Ljava/lang/String; = "etag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    const-string v0, "content://miui.yellowpage/cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Cache;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
