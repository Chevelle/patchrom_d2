.class public Lmiui/util/SpnUtils;
.super Ljava/lang/Object;
.source "SpnUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "networkOperator"

    .prologue
    .line 7
    invoke-static {}, Lmiui/telephony/MiuiSpnOverride;->getInstance()Lmiui/telephony/MiuiSpnOverride;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/MiuiSpnOverride;->getSpnFromConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
