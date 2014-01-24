.class public Lmiui/telephony/MiuiSpnOverride;
.super Ljava/lang/Object;
.source "MiuiSpnOverride.java"


# static fields
.field public static final EQ_OPERATOR_CM:Ljava/lang/String; = "46000"

.field public static final EQ_OPERATOR_CT:Ljava/lang/String; = "46003"

.field public static final EQ_OPERATOR_CU:Ljava/lang/String; = "46001"

.field public static final MCC_CHINA:Ljava/lang/String; = "460"

.field public static final MCC_NONE:Ljava/lang/String; = "000"

.field public static final MCC_TAIWAN:Ljava/lang/String; = "466"

.field private static final sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

.field static final sInstance:Lmiui/telephony/MiuiSpnOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;-><init>()V

    sput-object v0, Lmiui/telephony/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    .line 27
    new-instance v0, Lmiui/telephony/MiuiSpnOverride;

    invoke-direct {v0}, Lmiui/telephony/MiuiSpnOverride;-><init>()V

    sput-object v0, Lmiui/telephony/MiuiSpnOverride;->sInstance:Lmiui/telephony/MiuiSpnOverride;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImpl()Lcom/android/internal/telephony/gsm/SpnOverride;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmiui/telephony/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    return-object v0
.end method

.method public static getInstance()Lmiui/telephony/MiuiSpnOverride;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lmiui/telephony/MiuiSpnOverride;->sInstance:Lmiui/telephony/MiuiSpnOverride;

    return-object v0
.end method


# virtual methods
.method public containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .parameter "carrier"

    .prologue
    .line 38
    sget-object v0, Lmiui/telephony/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "carrier"

    .prologue
    .line 50
    sget-object v0, Lmiui/telephony/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "carrier"

    .prologue
    .line 46
    sget-object v0, Lmiui/telephony/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getSpn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "carrier"

    .prologue
    .line 42
    sget-object v0, Lmiui/telephony/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpnFromConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "carrier"

    .prologue
    .line 54
    sget-object v0, Lmiui/telephony/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getSpnFromConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
