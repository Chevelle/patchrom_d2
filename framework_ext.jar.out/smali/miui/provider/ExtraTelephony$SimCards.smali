.class public final Lmiui/provider/ExtraTelephony$SimCards;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimCards"
.end annotation


# static fields
.field public static final BIND_ID:Ljava/lang/String; = "bind_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final IMSI:Ljava/lang/String; = "imsi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MARKER1:Ljava/lang/String; = "marker1"

.field public static final MARKER2:Ljava/lang/String; = "marker2"

.field public static final MARKER_BASE:Ljava/lang/String; = "marker_base"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final SLOT:Ljava/lang/String; = "slot"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 594
    const-string v0, "content://mms-sms/sim-cards"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$SimCards;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
