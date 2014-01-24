.class public Lmiui/os/Build;
.super Landroid/os/Build;
.source "Build.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final IS_ALPHA_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_CM_CUSTOMIZATION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_CTS_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_CT_CUSTOMIZATION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_CU_CUSTOMIZATION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DEFY:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DESIRE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DEVELOPMENT_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_FAST_GPU_DEVICE:Z = false

.field public static final IS_FINAL_USER_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_FULL_SOURCE_CODE_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_GALAXYS2:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_GALAXYS_NEXUS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HK_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HONGMI:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HONGMI_TDSCDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HONGMI_THREE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HONGMI_TWO:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HONGMI_TWO_A:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HTC_HD2:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_I9000:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_INTERNATIONAL_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_LOW_MEMORY_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MI1S:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MI2A:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MILESTONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE_PLUS_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITHREE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITHREE_TDSCDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITHREE_WCDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITWO:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITWO_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITWO_TDSCDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MY_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_7:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_ONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_S:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_P990:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_RICH_MEMORY_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_SG_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_STABLE_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_T959:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_TDS_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_TW_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_U8860:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_U9200:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_XIAOMI:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_XIAOMI_CDMA:Z = false

.field private static final REGULAR_EXPRESSION_FOR_DEVELOPMENT:Ljava/lang/String; = "\\d+.\\d+.\\d+(-internal)?"

.field private static final REGULAR_EXPRESSION_FOR_STABLE:Ljava/lang/String; = "([A-Z]{3}|[A-Z]{7})\\d+.\\d+"

#the value of this static final field might be set in the static constructor
.field public static final SHOW_MAGNIFIER_WHEN_INPUT:Z = false

.field public static final USER_MODE:Ljava/lang/String; = "persist.sys.user_mode"

.field public static final USER_MODE_ELDER:I = 0x1

.field public static final USER_MODE_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    const-string v0, "jordan"

    sget-object v3, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    .line 14
    const-string v0, "bravo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_DESIRE:Z

    .line 15
    const-string v0, "galaxys2"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    .line 16
    const-string v0, "htcleo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "leo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lmiui/os/Build;->IS_HTC_HD2:Z

    .line 17
    const-string v0, "aries"

    sget-object v3, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    .line 18
    const-string v0, "umts_sholes"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    .line 19
    const-string v0, "passion"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_ONE:Z

    .line 20
    const-string v0, "crespo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    .line 21
    const-string v0, "grouper"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_7:Z

    .line 22
    const-string v0, "maguro"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    .line 23
    const-string v0, "p990"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_P990:Z

    .line 24
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "vibrant"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_T959:Z

    .line 25
    const-string v0, "hwu8860"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_U8860:Z

    .line 26
    const-string v0, "hwu9200"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_U9200:Z

    .line 29
    const-string v0, "mione"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mione_plus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    .line 30
    const-string v0, "aries"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "taurus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "taurus_td"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    .line 31
    const-string v0, "pisces"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "cancro"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    .line 32
    const-string v0, "cancro"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE_WCDMA:Z

    .line 33
    const-string v0, "MI 1S"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MI 1SC"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lmiui/os/Build;->IS_MI1S:Z

    .line 34
    const-string v0, "MI 2A"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "MI 2A TD"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    .line 35
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_1a

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    .line 38
    const-string v0, "armani"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    .line 40
    const-string v0, "HM2013022"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "HM2013023"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    if-eqz v0, :cond_1b

    :cond_7
    move v0, v2

    :goto_7
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    .line 43
    const-string v0, "W8850"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "T8850"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_8
    move v0, v2

    :goto_8
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    .line 45
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    if-eqz v0, :cond_1d

    :cond_9
    move v0, v2

    :goto_9
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI:Z

    .line 48
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_1e

    invoke-static {}, Lmiui/os/Build;->isMsm8660()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v2

    :goto_a
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_CDMA:Z

    .line 49
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Lmiui/os/Build;->hasCdmaProperty()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v2

    :goto_b
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    .line 50
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_20

    invoke-static {}, Lmiui/os/Build;->hasTdsCdmaProperty()Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    :goto_c
    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_TDSCDMA:Z

    .line 51
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lmiui/os/Build;->hasTdsCdmaProperty()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    :goto_d
    sput-boolean v0, Lmiui/os/Build;->IS_MITHREE_TDSCDMA:Z

    .line 53
    const-string v0, "HM2013022"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "T8850"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_a
    move v0, v2

    :goto_e
    sput-boolean v0, Lmiui/os/Build;->IS_HONGMI_TDSCDMA:Z

    .line 55
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE_CDMA:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    if-eqz v0, :cond_23

    :cond_b
    move v0, v2

    :goto_f
    sput-boolean v0, Lmiui/os/Build;->IS_CDMA:Z

    .line 56
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE_TDSCDMA:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TDSCDMA:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_TDSCDMA:Z

    if-eqz v0, :cond_24

    :cond_c
    move v0, v2

    :goto_10
    sput-boolean v0, Lmiui/os/Build;->IS_TDS_CDMA:Z

    .line 61
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE_CDMA:Z

    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_PLUS_CDMA:Z

    .line 65
    sget-boolean v0, Lmiui/os/Build;->IS_CDMA:Z

    sput-boolean v0, Lmiui/os/Build;->IS_XIAOMI_CDMA:Z

    .line 67
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v0, :cond_25

    :cond_d
    move v0, v2

    :goto_11
    sput-boolean v0, Lmiui/os/Build;->IS_RICH_MEMORY_DEVICE:Z

    .line 68
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    sput-boolean v0, Lmiui/os/Build;->IS_LOW_MEMORY_DEVICE:Z

    .line 70
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lmiui/os/Build;->IS_P990:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v0, :cond_26

    :cond_e
    move v0, v2

    :goto_12
    sput-boolean v0, Lmiui/os/Build;->IS_FAST_GPU_DEVICE:Z

    .line 73
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lmiui/os/Build;->IS_P990:Z

    if-eqz v0, :cond_27

    :cond_f
    move v0, v2

    :goto_13
    sput-boolean v0, Lmiui/os/Build;->IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z

    .line 79
    const-string v0, "cu"

    const-string v3, "ro.carrier.name"

    invoke-static {v3}, Lmiui/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    .line 80
    const-string v0, "cm"

    const-string v3, "ro.carrier.name"

    invoke-static {v3}, Lmiui/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    .line 81
    const-string v0, "ct"

    const-string v3, "ro.carrier.name"

    invoke-static {v3}, Lmiui/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    .line 83
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_7:Z

    if-eqz v0, :cond_28

    :cond_10
    move v0, v2

    :goto_14
    sput-boolean v0, Lmiui/os/Build;->SHOW_MAGNIFIER_WHEN_INPUT:Z

    .line 86
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_7:Z

    if-eqz v0, :cond_29

    :cond_11
    move v0, v2

    :goto_15
    sput-boolean v0, Lmiui/os/Build;->IS_FULL_SOURCE_CODE_DEVICE:Z

    .line 92
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "\\d+.\\d+.\\d+(-internal)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v2

    :goto_16
    sput-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 96
    const-string v0, "user"

    sget-object v3, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "([A-Z]{3}|[A-Z]{7})\\d+.\\d+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_2b

    move v0, v2

    :goto_17
    sput-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 101
    const-string v0, "ro.product.mod_device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_tw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_TW_BUILD:Z

    .line 102
    const-string v0, "ro.product.mod_device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_hk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_HK_BUILD:Z

    .line 103
    const-string v0, "ro.product.mod_device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_sg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_SG_BUILD:Z

    .line 104
    const-string v0, "ro.product.mod_device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_my"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MY_BUILD:Z

    .line 105
    sget-boolean v0, Lmiui/os/Build;->IS_TW_BUILD:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lmiui/os/Build;->IS_HK_BUILD:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lmiui/os/Build;->IS_SG_BUILD:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lmiui/os/Build;->IS_MY_BUILD:Z

    if-eqz v0, :cond_13

    :cond_12
    move v1, v2

    :cond_13
    sput-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 109
    const-string v0, "1"

    const-string v1, "ro.miui.secure"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    .line 112
    const-string v0, "1"

    const-string v1, "ro.miui.cts"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    return-void

    :cond_14
    move v0, v1

    .line 16
    goto/16 :goto_0

    :cond_15
    move v0, v1

    .line 29
    goto/16 :goto_1

    :cond_16
    move v0, v1

    .line 30
    goto/16 :goto_2

    :cond_17
    move v0, v1

    .line 31
    goto/16 :goto_3

    :cond_18
    move v0, v1

    .line 33
    goto/16 :goto_4

    :cond_19
    move v0, v1

    .line 34
    goto/16 :goto_5

    :cond_1a
    move v0, v1

    .line 35
    goto/16 :goto_6

    :cond_1b
    move v0, v1

    .line 40
    goto/16 :goto_7

    :cond_1c
    move v0, v1

    .line 43
    goto/16 :goto_8

    :cond_1d
    move v0, v1

    .line 45
    goto/16 :goto_9

    :cond_1e
    move v0, v1

    .line 48
    goto/16 :goto_a

    :cond_1f
    move v0, v1

    .line 49
    goto/16 :goto_b

    :cond_20
    move v0, v1

    .line 50
    goto/16 :goto_c

    :cond_21
    move v0, v1

    .line 51
    goto/16 :goto_d

    :cond_22
    move v0, v1

    .line 53
    goto/16 :goto_e

    :cond_23
    move v0, v1

    .line 55
    goto/16 :goto_f

    :cond_24
    move v0, v1

    .line 56
    goto/16 :goto_10

    :cond_25
    move v0, v1

    .line 67
    goto/16 :goto_11

    :cond_26
    move v0, v1

    .line 70
    goto/16 :goto_12

    :cond_27
    move v0, v1

    .line 73
    goto/16 :goto_13

    :cond_28
    move v0, v1

    .line 83
    goto/16 :goto_14

    :cond_29
    move v0, v1

    .line 86
    goto/16 :goto_15

    :cond_2a
    move v0, v1

    .line 92
    goto/16 :goto_16

    :cond_2b
    move v0, v1

    .line 96
    goto/16 :goto_17
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    return-void
.end method

.method public static getModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    .line 175
    .local v0, modelNumber:Ljava/lang/String;
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 179
    :cond_1
    const-string v1, "2013022"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const-string v0, "HM 1"

    goto :goto_0

    .line 181
    :cond_2
    const-string v1, "2013023"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v0, "HM 1W"

    goto :goto_0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"

    .prologue
    .line 156
    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserMode()I
    .locals 2

    .prologue
    .line 165
    const-string v0, "persist.sys.user_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static hasCdmaProperty()Z
    .locals 2

    .prologue
    .line 139
    const-string v1, "persist.radio.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, cdma:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CDMA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static hasTdsCdmaProperty()Z
    .locals 3

    .prologue
    .line 144
    const-string v0, "TD"

    const-string v1, "persist.radio.modem"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDevelopmentVersion()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    return v0
.end method

.method private static isMsm8660()Z
    .locals 2

    .prologue
    .line 133
    const-string v1, "ro.soc.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, soc:Ljava/lang/String;
    const-string v1, "msm8660"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOfficialVersion()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStableVersion()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    return v0
.end method

.method public static setUserMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 169
    const-string v0, "persist.sys.user_mode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 171
    return-void
.end method
