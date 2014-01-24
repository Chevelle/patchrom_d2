.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;
.super Ljava/lang/Object;
.source "YellowPageContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AntispamNumber"
.end annotation


# static fields
.field public static final CID:Ljava/lang/String; = "cid"

.field public static final CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIRECTORY:Ljava/lang/String; = "antispam_number"

.field public static final DIRECTORY_PHONE_LOOKUP:Ljava/lang/String; = "antispam_number_phone_lookup"

.field public static final MARKED_COUNT:Ljava/lang/String; = "marked_count"

.field public static final MIN_MATCH:Ljava/lang/String; = "min_match"

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PID:Ljava/lang/String; = "pid"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_CLOUD:I = 0x2

.field public static final TYPE_MARKED:I = 0x3

.field public static final TYPE_ONE_RING_CALL:I = 0x4

.field public static final TYPE_PRESET:I = 0x1

.field public static final UPLOAD:Ljava/lang/String; = "upload"

.field public static final UPLOADED_NO:I = 0x0

.field public static final UPLOADED_YES:I = 0x1

.field public static final VERSION_KEY:Ljava/lang/String; = "antispam_number_v2"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const-string v0, "content://miui.yellowpage/antispam_number"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_URI:Landroid/net/Uri;

    .line 174
    const-string v0, "content://miui.yellowpage/antispam_number_phone_lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    return-void
.end method
