.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$PhoneUsage;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneUsage"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTION_CALL_INCOMING:Ljava/lang/String; = "call_incoming"

.field public static final ACTION_CALL_OUTGOING:Ljava/lang/String; = "call_outgoing"

.field public static final ACTION_SMS_RECEIVE:Ljava/lang/String; = "sms_receive"

.field public static final ACTION_SMS_SEND:Ljava/lang/String; = "sms_send"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIRECTORY:Ljava/lang/String; = "phone_usage"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final QUERY_114_STATUS:Ljava/lang/String; = "query_114_status"

.field public static final QUERY_114_STATUS_FAILED:I = 0x3

.field public static final QUERY_114_STATUS_NOT_QUERIED:I = 0x0

.field public static final QUERY_114_STATUS_QUERIED:I = 0x1

.field public static final QUERY_114_STATUS_UPLOADED:I = 0x2

.field public static final QUERY_STATUS:Ljava/lang/String; = "query_status"

.field public static final QUERY_STATUS_QUERIED_NO:I = 0x0

.field public static final QUERY_STATUS_QUERIED_YES:I = 0x1

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 263
    const-string v0, "content://miui.yellowpage/phone_usage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$PhoneUsage;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
