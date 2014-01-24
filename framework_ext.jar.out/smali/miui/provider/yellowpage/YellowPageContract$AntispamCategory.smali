.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$AntispamCategory;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AntispamCategory"
.end annotation


# static fields
.field public static final CID:Ljava/lang/String; = "cid"

.field public static final CID_CUSTOM_START:I = 0x2710

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIRECTORY:Ljava/lang/String; = "antispam_category"

.field public static final NAMES:Ljava/lang/String; = "names"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_DO_NOT_SHOW_IN_MARK:I = 0x2

.field public static final TYPE_SYSTEM:I = 0x0

.field public static final TYPE_USER:I = 0x1

.field public static final VERSION_KEY:Ljava/lang/String; = "antispam_category"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const-string v0, "content://miui.yellowpage/antispam_category"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
