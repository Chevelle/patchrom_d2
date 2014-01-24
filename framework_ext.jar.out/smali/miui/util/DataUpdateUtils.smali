.class public Lmiui/util/DataUpdateUtils;
.super Ljava/lang/Object;
.source "DataUpdateUtils.java"


# static fields
.field public static final ATTRIBUTES_NAME:Ljava/lang/String; = "data-update"

.field private static final BASE_URL:Ljava/lang/String; = null

.field public static final DATA_UPDATE_RECEIVE:Ljava/lang/String; = "com.xiaomi.dataUpdate.RECEIVE"

.field public static final DATA_UPDATE_REGISTRATION:Ljava/lang/String; = "com.xiaomi.dataUpdate.REGISTRATION"

.field public static final EXTRA_SERVICE_NAME:Ljava/lang/String; = "service_name"

.field public static final EXTRA_WATER_MARK:Ljava/lang/String; = "water_mark"

.field private static final FORMAL_BASE_URL:Ljava/lang/String; = "http://api.comm.miui.com"

.field public static final HOLIDAY_URL:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DataUpdateUtils"

.field public static final MDB_URL:Ljava/lang/String; = null

.field public static final RECEIVER_META_DATA:Ljava/lang/String; = "com.xiaomi.dataUpdate"

.field private static final STAGING_BASE_URL:Ljava/lang/String; = "http://trial.api.comm.miui.com"

.field public static final URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "http://trial.api.comm.miui.com"

    :goto_0
    sput-object v0, Lmiui/util/DataUpdateUtils;->BASE_URL:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/util/DataUpdateUtils;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cspmisc/service/version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/DataUpdateUtils;->URL:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.comm.miui.com/holiday/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, "exp_holiday.jsp"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/DataUpdateUtils;->HOLIDAY_URL:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.comm.miui.com/mdb_pub/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_2

    const-string v0, "exp_mdb_pub.key"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/DataUpdateUtils;->MDB_URL:Ljava/lang/String;

    return-void

    .line 11
    :cond_0
    const-string v0, "http://api.comm.miui.com"

    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "holiday.jsp"

    goto :goto_1

    .line 34
    :cond_2
    const-string v0, "mdb_pub.key"

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lmiui/util/DataUpdateUtils;->BASE_URL:Ljava/lang/String;

    return-object v0
.end method
