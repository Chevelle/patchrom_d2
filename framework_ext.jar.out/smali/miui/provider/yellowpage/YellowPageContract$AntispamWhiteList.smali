.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$AntispamWhiteList;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AntispamWhiteList"
.end annotation


# static fields
.field public static final CONTNET_URI:Landroid/net/Uri; = null

.field public static final DIRECTORY:Ljava/lang/String; = "antispam_white_list"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final VERSION_KEY:Ljava/lang/String; = "antispam_white_list"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    const-string v0, "content://miui.yellowpage/antispam_white_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    return-void
.end method
