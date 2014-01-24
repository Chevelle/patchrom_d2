.class public Lmiui/provider/ExtraContacts$Calls;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final BACKUP_PARAM:Ljava/lang/String; = "backup"

.field public static final CLOUD_ANTISPAM_TYPE:Ljava/lang/String; = "cloud_antispam_type"

.field public static final CLOUD_ANTISPAM_TYPE_CUSTOM:I = 0x3

.field public static final CLOUD_ANTISPAM_TYPE_MAKRED:I = 0x2

.field public static final CLOUD_ANTISPAM_TYPE_NONE:I = 0x0

.field public static final CLOUD_ANTISPAM_TYPE_SP:I = 0x1

.field public static final CLOUD_ANTISPAM_TYPE_TAG:Ljava/lang/String; = "cloud_antispam_type_tag"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_QUERY_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_WITH_BACKUP:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final FIREWALL_TYPE:Ljava/lang/String; = "firewalltype"

.field public static final FORWARDED_CALL:Ljava/lang/String; = "forwarded_call"

.field public static final INCOMING_FORWARDING_CALL:I = 0x1

.field public static final INCOMING_MUTE_TYPE:I = 0x2

.field public static final INCOMING_NO_FIREWALL_TYPE:I = 0x0

.field public static final INCOMING_REJECTED_TYPE:I = 0x1

.field public static final MARK_DELETED:Ljava/lang/String; = "mark_deleted"

.field public static final MY_NUMBER:Ljava/lang/String; = "my_number"

.field public static final NEWCONTACT_TYPE:I = 0xa

.field public static final NUMBER_TYPE:Ljava/lang/String; = "number_type"

.field public static final NUMBER_TYPE_NORMAL:I = 0x0

.field public static final NUMBER_TYPE_YELLOWPAGE:I = 0x1

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final SOURCE_ID:Ljava/lang/String; = "source_id"

.field public static final SYNC1:Ljava/lang/String; = "sync_1"

.field public static final SYNC2:Ljava/lang/String; = "sync_2"

.field public static final SYNC3:Ljava/lang/String; = "sync_3"

.field public static final VTCALL:Ljava/lang/String; = "vtcall"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 218
    const-string v0, "content://call_log/calls_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_QUERY_URI:Landroid/net/Uri;

    .line 241
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "backup"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_URI_WITH_BACKUP:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;
    .locals 3
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "firewallType"
    .parameter "forwardedCall"

    .prologue
    .line 419
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 420
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "firewalltype"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v1, "forwarded_call"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    invoke-static {v0}, Landroid/provider/CallLog$Calls;->setExtraCallLogValues(Landroid/content/ContentValues;)V

    .line 423
    invoke-static/range {p0 .. p7}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
