.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$ImageLookup;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageLookup"
.end annotation


# static fields
.field public static final CONTENT_URI_IMAGE:Landroid/net/Uri; = null

.field public static final DIRECTORY_IMAGE:Ljava/lang/String; = "image"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "content://miui.yellowpage/image"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    return-void
.end method
